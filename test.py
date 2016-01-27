#!/usr/bin/env python2

import os
import sys
import subprocess
import logging
import shutil
import ntpath
import optparse

logging.basicConfig()
logger = logging.getLogger()

VALIDATION_ACCEPTED = "YES"
VALIDATION_WRONGANS = "NO"
VALIDATION_UNKNOWN = "UNKNOWN"



def get_result_path():
    return "results-opt"

# Returns : 1 if succeeded, 0 if failed, sys.exit(1) if unknown result
def check_validation_result(res, stop_ifvalidfail, vunit):
    if res == VALIDATION_ACCEPTED:
        return 1
    elif res == VALIDATION_WRONGANS : 
        print "Validation FAILED! at " + str(vunit)
        if stop_ifvalidfail:
            sys.exit(1)
        return 0
    elif res == VALIDATION_UNKNOWN : 
        logger.error(eachfilepath + " : validator emitted unknown result (neither succeeded or fail)! Please check " + stderr_path)
        sys.exit(1)
    return 0 # Unreachable code

# Returns : VALIDATION_ACCEPTED or VALIDATION_WRONGANS or VALIDATION_UNKNOWN
def get_validation_result(returncode, stdout_path, stderr_path):
    stdout_f = open(stdout_path, "r")
    stderr_f = open(stderr_path, "r")
    olines = stdout_f.readlines()
    elines = stderr_f.readlines()
    stderr_f.close()
    stdout_f.close()

    olastline = ""
    if len(olines) > 0 :
        olastline = olines[-1].strip() # remove endlines
    elastline = ""
    if len(elines) > 0 : 
        elastline = elines[-1].strip() # remove endlines

    if returncode == 0:
        assert olastline == "Validation succeeded."
        return VALIDATION_ACCEPTED
    elif returncode == 1:
        assert elastline == "Validation failed."
        return VALIDATION_WRONGANS
    return VALIDATION_UNKNOWN

# Returns : (srcfile_path, hint_path, tgtfile_path) list
def identify_path_triples(test_outputdir) : 
    output_dir_files = os.listdir(test_outputdir)

    # To check whether (src, hint, tgt) are well-paired...
    srcpath_to_hintpath = dict()
    tgtpath_to_hintpath = dict()
    triple_list = []
 
    for eachfile in output_dir_files : 
        eachfilepath = os.path.join(test_outputdir, eachfile)
        if not eachfile.endswith(".hint.json") : 
            if eachfile.endswith(".src.bc"):
                if eachfilepath not in srcpath_to_hintpath : 
                    srcpath_to_hintpath[eachfilepath] = "unpaired"
            elif eachfile.endswith(".tgt.bc") :
                if eachfilepath not in tgtpath_to_hintpath : 
                    tgtpath_to_hintpath[eachfilepath] = "unpaired"
            continue
        
        basefilename = eachfile[0:-(len(".hint.json"))]
        hintfilepath = os.path.join(test_outputdir, eachfile)
        srcfilepath = os.path.join(test_outputdir, basefilename + ".src.bc")
        tgtfilepath = os.path.join(test_outputdir, basefilename + ".tgt.bc")

        if not os.path.exists(srcfilepath) : 
            logger.error(srcfilename + " does not exist!")
            sys.exit(1)
        if not os.path.exists(tgtfilepath) : 
            logger.error(tgtfilename + " does not exist!")
            sys.exit(1)
        
        srcpath_to_hintpath[srcfilepath] = hintfilepath
        tgtpath_to_hintpath[tgtfilepath] = hintfilepath
        triple_list.append((srcfilepath, hintfilepath, tgtfilepath))
     
    for eachsrcpath in srcpath_to_hintpath :
        if srcpath_to_hintpath[eachsrcpath] == "unpaired" : 
            logger.error(eachsrcpath + " is unpaired!! (It has no corresponding hint.json file)")
            sys.exit(1)
    for eachtgtpath in tgtpath_to_hintpath : 
        if tgtpath_to_hintpath[eachtgtpath] == "unpaired" : 
            logger.error(eachtgtpath + " is unpaired!! (It has no corresponding hint.json file)")
            sys.exit(1)
  
    return triple_list


def validate_results(validatorpath, test_outputdir, stop_ifvalidfail) : 
    output_dir_files = os.listdir(test_outputdir)
    
    total_validation_cnt = 0
    succeeded_validation_cnt = 0
    triples = identify_path_triples(test_outputdir)
   
    for vunit in triples : 
        
        (srcfilepath, hintfilepath, tgtfilepath) = vunit
        basefilepath = hintfilepath[0:-(len(".hint.json"))]

        stdout_path = basefilepath + ".validator.stdout"
        stderr_path = basefilepath + ".validator.stderr"
        stdout_f = open(stdout_path, "w")
        stderr_f = open(stderr_path, "w")
        returncode = subprocess.call([validatorpath, srcfilepath, tgtfilepath, hintfilepath], stdout=stdout_f, stderr=stderr_f)
        stdout_f.close()
        stderr_f.close()
        
        validation_result = get_validation_result(returncode, stdout_path, stderr_path)
        
        succeeded_validation_cnt += check_validation_result(validation_result, stop_ifvalidfail, vunit)
        total_validation_cnt = total_validation_cnt + 1
   
    return (total_validation_cnt, succeeded_validation_cnt)



parser = optparse.OptionParser(description="Runs LLVMBerry on pre-defined test set")
parser.add_option("-e", "--executable", action="store", 
                dest="exepath", 
                help='Hint generation executable(opt, clang, ..)')
parser.add_option('-v', '--validator', action="store", 
                dest="validatorpath", 
                help='Validator')
parser.add_option('-r', '--execargs', action="store", 
                dest="exearg", 
                help='Arguments to pass hint generation executable', default='')
parser.add_option('-f', '--stopfails', action="store_true", 
                dest="stop_ifvalidfail", default=False, 
                help='Halts execution if at least one validation fails')
parser.add_option('-o', '--opt', action="store_true", 
                dest="isopt", default=False, 
                help='If the given executable is opt, this option should be enabled')



if __name__ == "__main__":
    (arg_results, args) = parser.parse_args()
    
    result_path = get_result_path()

    if os.path.exists(result_path):
        shutil.rmtree(result_path);

    os.mkdir(result_path)
    
    optpath = arg_results.exepath
    optarg = arg_results.exearg
    validatorpath = arg_results.validatorpath
    stop_ifvalidfail = arg_results.stop_ifvalidfail
    isopt = arg_results.isopt

    if isopt == False:
        logger.error("NOTICE : This test.py currently does not support clang. If you're trying to run opt, you should give '-opt' command argument.")
        sys.exit(1)

    if not os.path.exists(optpath) :
        logger.error(optpath + " file does not exist")
        sys.exit(1)
    if not os.path.exists(validatorpath) : 
        logger.error(validatorpath + " file does not exist")
        sys.exit(1)

    totalcnt = 0
    totalsuccesscnt = 0

    # for each subfolder in "inputs"..
    for testname in os.listdir("inputs") : 
        testdir = os.path.join("inputs", testname)
        print "testdir : " + testdir
        # create new sub directory in results-opt folder.. 
        test_outputdir = os.path.join(result_path, testname)
        os.mkdir(test_outputdir)

        for bitcode_file in os.listdir(testdir) : 
            if not bitcode_file.endswith(".bc"):
                print "-- Passing " + bitcode_file + " as it is not .bc file..."
                continue

            bitcode_path = os.path.join(testdir + "/" + bitcode_file)
            bitcode_outputdir = os.path.join(test_outputdir, bitcode_file)
            os.mkdir(bitcode_outputdir)

            print "-- running " + bitcode_path
            stdout_path = os.path.join(test_outputdir, bitcode_file + ".opt.stdout")
            stderr_path = os.path.join(test_outputdir, bitcode_file + ".opt.stderr")
            stdout_f = open(stdout_path, "w")
            stderr_f = open(stderr_path, "w")
            subprocess.call([optpath, optarg, "-S", "-llvmberry-outputdir", bitcode_outputdir, bitcode_path], stdout=stdout_f, stderr=stderr_f)
            stdout_f.close()
            stderr_f.close()
            
            # validate_results function returns (# of validation units, # of successful validation units)
            (case_totalcnt, case_succeededcnt) = validate_results(validatorpath, bitcode_outputdir, stop_ifvalidfail)
            # Now accumulating # of cases..
            totalcnt = totalcnt + case_totalcnt
            totalsuccesscnt = totalsuccesscnt + case_succeededcnt

            print bitcode_path + ": succeeded " + str(case_succeededcnt) \
                + " over " + str(case_totalcnt) \
                + " (now total : " + str(totalsuccesscnt) + " over " + str(totalcnt) + ")"
    print "TOTAL : " + str(totalsuccesscnt) + "/" + str(totalcnt)
