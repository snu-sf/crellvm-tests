#!/usr/bin/env python2

import os
import sys
import subprocess
import logging
import shutil
import ntpath

logging.basicConfig()
logger = logging.getLogger()

def get_result_path():
    return "results-opt"

def check_single_validation(stdout_path, stderr_path):
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

    if olastline == "Validation succeeded." : 
        return "YES"
    elif elastline == "Validation failed." : 
        return "NO"
    return "UNKNOWN"


def validate_results(validatorpath, test_outputdir, stop_ifvalidfail) : 
    output_dir_files = os.listdir(test_outputdir)
    
    total_validation_cnt = 0
    succeeded_validation_cnt = 0

    # To check whether (src, hint, tgt) are well-paired...
    srcpath_to_hintpath = dict()
    tgtpath_to_hintpath = dict()
    
    for eachfile in output_dir_files : 
        eachfilepath = os.path.join(test_outputdir, eachfile)
        if not eachfile.endswith(".hint.json") : 
            if eachfile.endswith(".src.bc"):
                if eachfilepath not in srcpath_to_hintpath : 
                    srcpath_to_hintpath[eachfilepath] = "UNKNOWN"
            elif eachfile.endswith(".tgt.bc") :
                if eachfilepath not in tgtpath_to_hintpath : 
                    tgtpath_to_hintpath[eachfilepath] = "UNKNOWN"
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
        
        srcpath_to_hintpath[srcfilepath] = hintfilepath;
        tgtpath_to_hintpath[tgtfilepath] = hintfilepath;

        stdout_path = os.path.join(test_outputdir, basefilename + ".validator.stdout")
        stderr_path = os.path.join(test_outputdir, basefilename + ".validator.stderr")
        stdout_f = open(stdout_path, "w")
        stderr_f = open(stderr_path, "w")
        subprocess.call([validatorpath, srcfilepath, tgtfilepath, hintfilepath], stdout=stdout_f, stderr=stderr_f)
        stdout_f.close()
        stderr_f.close()
        
        total_validation_cnt = total_validation_cnt + 1
        validation_result = check_single_validation(stdout_path, stderr_path)
        if validation_result == "YES":
            succeeded_validation_cnt = succeeded_validation_cnt + 1
        elif validation_result == "NO" : 
            print "Validation FAILED! at (" + srcfilepath + " , " + tgtfilepath + " , " + hintfilepath + ")"
            if stop_ifvalidfail:
                sys.exit(1)
        elif validation_result == "UNKNOWN" : 
            logger.error(eachfilepath + " : validator emitted unknown result (neither succeeded or fail)! Please check " + stderr_path)
            sys.exit(1)
    
    for eachsrcpath in srcpath_to_hintpath :
        if srcpath_to_hintpath[eachsrcpath] == "UNKNOWN" : 
            logger.error(eachsrcpath + " is unpaired!! (It has no corresponding hint.json file)")
            sys.exit(1)
    for eachtgtpath in tgtpath_to_hintpath : 
        if tgtpath_to_hintpath[eachtgtpath] == "UNKNOWN" : 
            logger.error(eachtgtpath + " is unpaired!! (It has no corresponding hint.json file)")
            sys.exit(1)
    
    return (total_validation_cnt, succeeded_validation_cnt)

if __name__ == "__main__":
    result_path = get_result_path()

    if os.path.exists(result_path):
        shutil.rmtree(result_path);

    os.mkdir(result_path)
    
    if len(sys.argv) <> 5:
        logger.error("run-opt.py <opt executive path> <executing path(options : \"-instcombine\")> <validator path> <Stop if validation fails?(Y/N)>")
        sys.exit(1)

    optpath = sys.argv[1]
    optarg = sys.argv[2]
    validatorpath = sys.argv[3]
    stop_ifvalidfail = sys.argv[4]
    if not (stop_ifvalidfail == "Y") and not (stop_ifvalidfail == "N") : 
        logger.error("<Stop if validation fails?(Y/N)> argument must be either Y or N")
        sys.exit(1)
    stop_ifvalidfail = True if stop_ifvalidfail == "Y" else False

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
            
            (case_totalcnt, case_succeededcnt) = validate_results(validatorpath, bitcode_outputdir, stop_ifvalidfail)
            totalcnt = totalcnt + case_totalcnt
            totalsuccesscnt = totalsuccesscnt + case_succeededcnt
            print bitcode_path + ": succeeded " + str(case_succeededcnt) + " over " + str(case_totalcnt) + " (now total : " + str(totalsuccesscnt) + " over " + str(totalcnt) + ")"
    print "TOTAL : " + str(totalsuccesscnt) + "/" + str(totalcnt)
