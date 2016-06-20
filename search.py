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


parser = optparse.OptionParser(description="Search validation units that meet given conditions")
parser.add_option('-f', '--vunitfolder', action="store",
        dest="resultfolder", default=False,
        help='A folder name that contains validation units')
parser.add_option('-o', '--optname', action="store",
        dest="optname", default="",
        help='A name of optimization')


if __name__ == "__main__":
    (arg_results, args) = parser.parse_args()
    
    vunitpath = arg_results.resultfolder
    optname = arg_results.optname

    if not os.path.exists(vunitpath):
        logger.error("{0} path does not exist".format(vunitpath))
        sys.exit(1) #shutil.rmtree(result_path);

    reslist = []
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
                hintfile = open(hintpath)
                hintdata = json.load(hintfile)
                
                if len(optname) > 0 and hintdata["opt_name"] == optname :
                    reslist.append(hintpath)

    reslist.sort()
    idx = 1
    for itm in reslist :
        print "{0} : {1}".format(idx, itm)
        idx = idx + 1

