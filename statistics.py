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


parser = optparse.OptionParser(description="Shows various statistics from validation units")
parser.add_option('-f', '--vunitfolder', action="store",
        dest="resultfolder", default=False,
        help='Folder name storing validation units')
parser.add_option('-o', '--optimizations', action="store_true", 
        dest="showoptimizations", default=False,
        help='Shows statistics on optimizations')

if __name__ == "__main__":
    (arg_results, args) = parser.parse_args()
    
    vunitpath = arg_results.resultfolder

    if not os.path.exists(vunitpath):
        logger.error("{0} path does not exist".format(vunitpath))
        sys.exit(1) #shutil.rmtree(result_path);

    opt_stats = dict()
    
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
                data = json.load(hintfile)
                
                if data["opt_name"] in opt_stats:
                    opt_stats[data["opt_name"]] += 1
                else:
                    opt_stats[data["opt_name"]] = 1

    if arg_results.showoptimizations:
        keys = opt_stats.keys()
        keys.sort()
        for key in keys:
            print "{0} \t: {1} time(s) appeared".format(key, opt_stats[key])
