#!/usr/bin/env python2

import os
import sys
import subprocess
import logging
import shutil
import ntpath
import optparse
from vunit_utils import identify_triples

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
        assert elastline == "Validation succeeded."
        return 1
    elif returncode == 1:
        assert elastline == "Validation failed."
        print "Validation FAILED! at {0}".format(str(vunit))
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
    stdout_path = "{0}.validator.stdout".format(basefilepath)
    stderr_path = "{0}.validator.stderr".format(basefilepath)

    stdout_f = open(stdout_path, "w")
    stderr_f = open(stderr_path, "w")
    returncode = subprocess.call([validatorpath, srcfilepath, tgtfilepath, hintfilepath], stdout=stdout_f, stderr=stderr_f)
    stdout_f.close()
    stderr_f.close()
    
    return (returncode, stdout_path, stderr_path)

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
    stdout_path = os.path.join(test_outputdir, "{0}.opt.stdout".format(bitcode_file))
    stderr_path = os.path.join(test_outputdir, "{0}.opt.stderr".format(bitcode_file))
    stdout_f = open(stdout_path, "w")
    stderr_f = open(stderr_path, "w")
    retcode = subprocess.call([optpath, optarg, "-S", "-llvmberry-outputdir", bitcode_outputdir, bitcode_path], stdout=stdout_f, stderr=stderr_f)
    stdout_f.close()
    stderr_f.close()

    return (retcode, stdout_path, stderr_path)


parser = optparse.OptionParser(description="Runs LLVMBerry on pre-defined test set")
parser.add_option('-i', '--input', action="store",
                dest="inputpath", default="inputs",
                help='Input folder path')
parser.add_option("-e", "--executable", action="store", 
                dest="exepath",
                default="../build/bin/opt",
                help='Hint generation executable(opt, clang, ..)')
parser.add_option('-v', '--validator', action="store", 
                dest="validatorpath", 
                default="../ocaml_refact/_build/main.native",
                help='Validator')
parser.add_option('-r', '--execargs', action="store", 
                dest="exearg", 
                help='Arguments to pass hint generation executable', default='')
parser.add_option('-f', '--stopfails', action="store_true", 
                dest="stop_ifvalidfail", default=False, 
                help='Halts execution if at least one validation fails')
parser.add_option ('-c', '--continue', action="store_true",
                dest="continue_ifclangfail", default=False,
                help='Continues execution even if clang(or opt) fails')
parser.add_option('-o', '--opt', action="store_true", 
                dest="isopt", default=False, 
                help='If the given executable is opt, this option should be enabled')

if __name__ == "__main__":
    (arg_results, args) = parser.parse_args()
    
    result_path = get_result_path()

    if os.path.exists(result_path):
        logger.error("{0} path already exists! please erase the directory".format(result_path))
        sys.exit(1) #shutil.rmtree(result_path);

    os.mkdir(result_path)
    
    optpath = arg_results.exepath
    optarg = arg_results.exearg
    inputpath = arg_results.inputpath
    validatorpath = arg_results.validatorpath
    stop_ifvalidfail = arg_results.stop_ifvalidfail
    isopt = arg_results.isopt
    continue_ifclangfail = arg_results.continue_ifclangfail

    if isopt == False:
        logger.error("NOTICE : This test.py currently does not support clang. If you're trying to run opt, you should give '-opt' command argument.")
        sys.exit(1)

    if not os.path.exists(optpath) :
        logger.error("{0} file does not exist".format(optpath))
        sys.exit(1)
    if not os.path.exists(validatorpath) : 
        logger.error("{0} file does not exist".format(validatorpath))
        sys.exit(1)
    if not os.path.exists(inputpath):
        logger.error("{0} folder does not exist".format(inputpath))
        sys.exit(1)

    totalcnt = 0
    totalsuccesscnt = 0
    totalunknowncnt = 0

    # for each subfolder in "inputs"..
    for testname in os.listdir(inputpath) : 
        testdir = os.path.join(inputpath, testname)
        print "testdir : {0}".format(testdir)
        # create new sub directory in results-opt folder.. 
        test_outputdir = os.path.join(result_path, testname)
        os.mkdir(test_outputdir)

        for bitcode_file in os.listdir(testdir) : 
            if not bitcode_file.endswith(".ll"):
                print "-- Passing {0} as it is not .ll file...".format(bitcode_file)
                continue

            bitcode_path = os.path.join(testdir, bitcode_file)
            bitcode_outputdir = os.path.join(test_outputdir, bitcode_file)
            os.mkdir(bitcode_outputdir)
            
            # Run opt.
            print "-- running {0}".format(bitcode_path)
            (opt_retcode, stdout_path, stderr_path) = run_opt(optpath, optarg, test_outputdir, bitcode_file)
            if opt_retcode <> 0:
              if not continue_ifclangfail:
                logger.error("{0} halted with non-zero return value! You may see {1}".format(optpath, stderr_path))
                sys.exit(1)

            # validate_results function returns 
            # (# of validation units, # of successful validation units)
            (case_totalcnt, case_succeededcnt, case_unknowncnt) = validate_results(validatorpath, bitcode_outputdir, stop_ifvalidfail)
            # Now accumulating # of cases..
            totalcnt += case_totalcnt
            totalsuccesscnt += case_succeededcnt
            totalunknowncnt += case_unknowncnt

            print "{0}: succeeded: {1}, unknown: {2}, total: {3} (total : {1}, unknown : {2}, total : {3})".format(bitcode_path, case_succeededcnt, case_unknowncnt, case_totalcnt, totalsuccesscnt, totalunknowncnt, totalcnt)
    
    print "TOTAL : {0}, SUCCESS : {1}, FAIL : {2}, UNKNOWN : {3}".format(str(totalcnt), \
        str(totalsuccesscnt), \
        str(totalcnt - totalsuccesscnt - totalunknowncnt), \
        str(totalunknowncnt))
