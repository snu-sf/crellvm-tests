#!/usr/bin/env python3

import os
import sys
import subprocess
import logging
import shutil
import ntpath
import optparse
import json
from vunit_utils import identify_triples

logging.basicConfig()
logger = logging.getLogger()


parser = optparse.OptionParser(description="Lists failures in result folder")
parser.add_option('-f', '--vunitfolder', action="store",
        dest="resultfolder", default=False,
        help='Folder name storing validation units')

if __name__ == "__main__":
    (arg_results, args) = parser.parse_args()
    
    vunitpath = arg_results.resultfolder

    if not os.path.exists(vunitpath):
        logger.error("{0} path does not exist".format(vunitpath))
        sys.exit(1) #shutil.rmtree(result_path);

    faillist = []
    unknownlist = []
    for filename in os.listdir(vunitpath) : 
        filepath = os.path.join(vunitpath, filename)
        if not os.path.isdir(filepath):
            continue
        
        for filename2 in os.listdir(filepath):
            filepath2 = os.path.join(filepath, filename2)
            if not os.path.isdir(filepath2):
                continue
            
            vunits = identify_triples(filepath2)
            for (srcpath, hintpath, tgtpath) in vunits:
                stdoutpath = srcpath[:-7] + ".validator.stdout"
                stdoutfile = open(stdoutpath, "r")
                stdoutfile_lines = stdoutfile.readlines()
                
                hintfile = open(hintpath)
                hintdata = json.load(hintfile)
                if len(stdoutfile_lines) == 0 :
                    unknownlist.append("{0} : look at {1}".format(hintdata["opt_name"], hintpath))
                else:
                    lastline = stdoutfile_lines[-1].strip()
                    
                    if lastline == "Validation failed." :
                        faillist.append("{0} : look at {1}".format(hintdata["opt_name"], hintpath))
                    elif not (lastline == "Validation succeeded.") : 
                        unknownlist.append("{0} : look at {1}".format(hintdata["opt_name"], hintpath))

    faillist.sort()
    unknownlist.sort()
    idx = 1
    for itm in faillist :
        print "Fail {0} : {1}".format(idx, itm)
        idx = idx + 1
    idx = 1
    for itm in unknownlist : 
        print "Unknown {0} : {1}".format(idx, itm)
        idx = idx + 1

