#!/usr/bin/env python2

import os
import sys
import subprocess
import logging
import shutil
import ntpath
import optparse
from vunit_utils import identify_triples
from vunit_utils import get_basefilepath
from vunit_utils import get_validator_stdouterr
from vunit_utils import check_validation_result

logging.basicConfig()
logger = logging.getLogger()



# Returns (returncode, stdout_path, stderr_path)
def run_validator(validatorpath, vunit) : 
    
    (srcfilepath, hintfilepath, tgtfilepath) = vunit
    basefilepath = get_basefilepath(vunit)
    (stdout_path, stderr_path) = get_validator_stdouterr(basefilepath);

    stdout_f = open(stdout_path, "w")
    stderr_f = open(stderr_path, "w")
    returncode = subprocess.call([validatorpath, srcfilepath, tgtfilepath, hintfilepath], stdout=stdout_f, stderr=stderr_f)
    stdout_f.close()
    stderr_f.close()
    
    return (returncode, stdout_path, stderr_path)

def run_opt_lower_switch(optpath, filepath) :
    # TODO: run filepath
    # filepath_suffix = filepath[-7:]
    # filepath_lower = filepath[0:-(len(".xxx.bc"))] + ".lower" + filepath_suffix
    filepath_tmp = filepath + ".tmp"

    retcode = subprocess.call([optpath, "-lowerswitch", filepath, "-o", filepath_tmp])
    print " **** optpath: " + optpath + " -lowerswitch "+filepath+" -o "+filepath_tmp
    if (retcode <> 0):
        print "Running lowerswitch returns nonzero value."
        return (1, filepath)

    print " **** lowered: " + filepath_tmp
    retcode = subprocess.call(["mv", filepath_tmp, filepath])

    return (0, filepath)
    
# returns (total, succeeded, unknown, lowerfailfiles)
def validate_results(optpath, validatorpath, test_outputdir, stop_ifvalidfail) : 
    output_dir_files = os.listdir(test_outputdir)
    
    total_validation_cnt = 0
    succeeded_validation_cnt = 0
    unknown_validation_cnt = 0
    lower_fail = []
    triples = identify_triples(test_outputdir)
   
    for vunit in triples :

        # TODO: run opt -lower-switch in src and tgt
        (srcfilepath, hintfilepath, tgtfilepath) = vunit
        (srclowerfail, srcfilepath) = run_opt_lower_switch(optpath, srcfilepath)
        (tgtlowerfail, tgtfilepath) = run_opt_lower_switch(optpath, tgtfilepath)
        vunit = (srcfilepath,
                 hintfilepath,
                 tgtfilepath)
        if 0 < srclowerfail:
          lower_fail.append(srcfilepath)
        if 0 < tgtlowerfail:
          lower_fail.append(tgtfilepath)
        
        (returncode, stdout_path, stderr_path) = run_validator(validatorpath, vunit)
       
        res = check_validation_result(stdout_path, stderr_path, stop_ifvalidfail, True, vunit)
        if res == 1:
            succeeded_validation_cnt += 1
        elif res == -1:
            unknown_validation_cnt += 1
        total_validation_cnt = total_validation_cnt + 1
   
    return (total_validation_cnt, succeeded_validation_cnt, unknown_validation_cnt, lower_fail)


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
parser.add_option('-s', '--result', action="store",
                dest="result_path", default="results-opt",
                help='Directory path of results')


if __name__ == "__main__":
    (arg_results, args) = parser.parse_args()
    
    result_path = arg_results.result_path

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
    totaloptfails = []
    totallowerfails = []

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
              totaloptfails.append(stderr_path)

            # validate_results function returns 
            # (# of validation units, # of successful validation units)
            (case_totalcnt, case_succeededcnt, case_unknowncnt, case_lowerfaillist) = validate_results(optpath, validatorpath, bitcode_outputdir, stop_ifvalidfail)
            # Now accumulating # of cases..
            totalcnt += case_totalcnt
            totalsuccesscnt += case_succeededcnt
            totalunknowncnt += case_unknowncnt
            totallowerfails = totallowerfails + case_lowerfaillist

            print "{0}: succeeded: {1}, unknown: {2}, total: {3} (total : {4}, unknown : {5}, total : {6})".format(bitcode_path, case_succeededcnt, case_unknowncnt, case_totalcnt, totalsuccesscnt, totalunknowncnt, totalcnt)
    
    print "TOTAL : {0}, SUCCESS : {1}, FAIL : {2}, UNKNOWN : {3}".format(str(totalcnt), \
        str(totalsuccesscnt), \
        str(totalcnt - totalsuccesscnt - totalunknowncnt), \
        str(totalunknowncnt))

    print "clang(opt) FAILURE : {0}".format(str(len(totaloptfails)))
    print "lowering FAILURE : {0}".format(str(len(totallowerfails)))
    for eachstderrpath in totaloptfails:
        print "opt fail : {0}".format(eachstderrpath)
    for eachbcpath in totallowerfails:
        print "lower fail : {0}".format(eachbcpath)
