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

parser = optparse.OptionParser(description="Runs LLVMBerry on pre-defined test set")
parser.add_option('-i', '--input', action="store",
  dest="inputpath", default="inputs", help='Input folder path')
parser.add_option("-e", "--executable", action="store", 
  dest="exepath", help='Hint generation executable(opt, clang, ..)')

if __name__ == "__main__":
    (arg_results, args) = parser.parse_args()
     
    optpath = arg_results.exepath
    inputpath = arg_results.inputpath
    # if user said "input/", he probably meant "input"... i guess
    if inputpath[-1] == '/':
      inputpath = inputpath[:-1]
    resultpath = os.path.join(os.path.dirname(inputpath),
                              os.path.basename(inputpath) + "_lower")

    if os.path.exists(resultpath):
      logger.error("{0} path already exists! please erase the directory".format(resultpath))
      sys.exit(1) #shutil.rmtree(resultpath);

    os.mkdir(resultpath)

    if not os.path.exists(optpath):
        logger.error("{0} file does not exist".format(optpath))
        sys.exit(1)
    if not os.path.exists(inputpath):
        logger.error("{0} folder does not exist".format(inputpath))
        sys.exit(1)

    for testname in os.listdir(inputpath) : 
        testdir = os.path.join(inputpath, testname)
        test_outputdir = os.path.join(resultpath, testname)
        os.mkdir(test_outputdir)

        for ll_file in os.listdir(testdir) : 
            if not ll_file.endswith(".ll"):
                continue

            ll_path = os.path.join(testdir, ll_file)
            ll_outputpath = os.path.join(test_outputdir, ll_file)
            
            retcode = subprocess.call([optpath, "-lowerswitch", "-S", "-o", ll_outputpath, ll_path])
            if retcode <> 0:
              logger.error("{0} halted with non-zero return value!".format(optpath))
              sys.exit(1)
