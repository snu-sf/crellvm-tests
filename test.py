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


def get_result_path():
    return "results-opt"

def get_basefilepath(vunit):
    (srcfilepath, hintfilepath, tgtfilepath) = vunit
    basefilepath = hintfilepath[0:-(len(".hint.json"))]
    assert srcfilepath[0:-(len(".src.bc"))] == basefilepath
    assert tgtfilepath[0:-(len(".tgt.bc"))] == basefilepath
    return basefilepath

# Returns : 1 if succeeded, 0 if failed, -1 if unknown result
def check_validation_result(returncode, stdout_path, stderr_path, stop_ifvalidfail, vunit):
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
        return 1
    elif returncode == 1:
        assert elastline == "Validation failed."
        print "Validation FAILED! at " + str(vunit)
        if stop_ifvalidfail:
            sys.exit(1)
        return 0 
    
    return -1
    #logger.error("validator emitted unknown result (neither succeeded or fail)! Please check " + stderr_path)
    #sys.exit(1)

# Returns (returncode, stdout_path, stderr_path)
def run_validator(validatorpath, vunit) : 
    
    (srcfilepath, hintfilepath, tgtfilepath) = vunit
    basefilepath = get_basefilepath(vunit)
    stdout_path = basefilepath + ".validator.stdout"
    stderr_path = basefilepath + ".validator.stderr"

    stdout_f = open(stdout_path, "w")
    stderr_f = open(stderr_path, "w")
    returncode = subprocess.call([validatorpath, srcfilepath, tgtfilepath, hintfilepath], stdout=stdout_f, stderr=stderr_f)
    stdout_f.close()
    stderr_f.close()
    
    return (returncode, stdout_path, stderr_path)

# Returns : (srcfile_path, hint_path, tgtfile_path) list
def identify_triples(test_outputdir) : 
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


# returns (total, succeeded, unknown)
def validate_results(validatorpath, test_outputdir, stop_ifvalidfail) : 
    output_dir_files = os.listdir(test_outputdir)
    
    total_validation_cnt = 0
    succeeded_validation_cnt = 0
    unknown_validation_cnt = 0
    triples = identify_triples(test_outputdir)
   
    for vunit in triples : 
        
        (returncode, stdout_path, stderr_path) = run_validator(validatorpath, vunit)
       
        res = check_validation_result(returncode, stdout_path, stderr_path, stop_ifvalidfail, vunit)
        if res == 1:
            succeeded_validation_cnt += 1
        elif res == -1:
            unknown_validation_cnt += 1
        total_validation_cnt = total_validation_cnt + 1
   
    return (total_validation_cnt, succeeded_validation_cnt, unknown_validation_cnt)


# Returns : (retcode, stdout_path, stderr_path)
def run_opt(optpath, optarg, test_outputdir, bitcode_file):
    stdout_path = os.path.join(test_outputdir, bitcode_file + ".opt.stdout")
    stderr_path = os.path.join(test_outputdir, bitcode_file + ".opt.stderr")
    stdout_f = open(stdout_path, "w")
    stderr_f = open(stderr_path, "w")
    retcode = subprocess.call([optpath, optarg, "-S", "-llvmberry-outputdir", bitcode_outputdir, bitcode_path], stdout=stdout_f, stderr=stderr_f)
    stdout_f.close()
    stderr_f.close()

    return (retcode, stdout_path, stderr_path)


parser = optparse.OptionParser(description="Runs LLVMBerry on pre-defined test set")
parser.add_option('-i', '--input', action="store",
                dest="inputpath", default=False,
                help='Input folder path')
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
    inputpath = arg_results.inputpath
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
    if not os.path.exists(inputpath):
        logger.error(inputpath + " folder does not exist")
        sys.exit(1)

    totalcnt = 0
    totalsuccesscnt = 0
    totalunknowncnt = 0

    # for each subfolder in "inputs"..
    for testname in os.listdir(inputpath) : 
        testdir = os.path.join(inputpath, testname)
        print "testdir : " + testdir
        # create new sub directory in results-opt folder.. 
        test_outputdir = os.path.join(result_path, testname)
        os.mkdir(test_outputdir)

        for bitcode_file in os.listdir(testdir) : 
            if not bitcode_file.endswith(".ll"):
                print "-- Passing " + bitcode_file + " as it is not .ll file..."
                continue

            bitcode_path = os.path.join(testdir + "/" + bitcode_file)
            bitcode_outputdir = os.path.join(test_outputdir, bitcode_file)
            os.mkdir(bitcode_outputdir)
            
            # Run opt.
            print "-- running " + bitcode_path
            (opt_retcode, stdout_path, stderr_path) = run_opt(optpath, optarg, test_outputdir, bitcode_file)
            if opt_retcode <> 0:
              logger.error(optpath + " halted with non-zero return value! You may see " + stderr_path)
              sys.exit(1)

            # validate_results function returns 
            # (# of validation units, # of successful validation units)
            (case_totalcnt, case_succeededcnt, case_unknowncnt) = validate_results(validatorpath, bitcode_outputdir, stop_ifvalidfail)
            # Now accumulating # of cases..
            totalcnt += case_totalcnt
            totalsuccesscnt += case_succeededcnt
            totalunknowncnt += case_unknowncnt

            print bitcode_path + ": succeeded:" + str(case_succeededcnt) \
                + ", unknown:" + str(case_unknowncnt) \
                + ", total:" + str(case_totalcnt) \
                + " (now:succeeded:" + str(totalsuccesscnt) \
                + ", unknown:" + str(totalunknowncnt) \
                + ", total:" + str(totalcnt) + ")"
    print "TOTAL : " + str(totalcnt) \
        + ", SUCCESS : " + str(totalsuccesscnt) \
        + ", FAIL : " + str(totalcnt - totalsuccesscnt - totalunknowncnt) \
        + ", UNKNOWN : " + str(totalunknowncnt)
