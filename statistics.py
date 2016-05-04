#!/usr/bin/env python3

import os
import sys
import subprocess
import logging
import shutil
import ntpath
import optparse
import json
from vunit_utils import get_basefilepath
from vunit_utils import get_validator_stdouterr
from vunit_utils import identify_triples
from vunit_utils import check_validation_result

logging.basicConfig()
logger = logging.getLogger()


parser = optparse.OptionParser(description="Shows various statistics from validation units")
parser.add_option('-f', '--vunitfolder', action="store",
        dest="resultfolder", default=False,
        help='Folder name storing validation units')
parser.add_option('-o', '--optimizations', action="store_true", 
        dest="showoptimizations", default=False,
        help='Shows statistics on optimizations')

def update_dict (stats, key) :
    if key in stats : 
        stats[key] += 1
    else :
        stats[key] = 1

if __name__ == "__main__":
    (arg_results, args) = parser.parse_args()
    
    vunitpath = arg_results.resultfolder

    if not os.path.exists(vunitpath):
        logger.error("{0} path does not exist".format(vunitpath))
        sys.exit(1) #shutil.rmtree(result_path);

    opt_names = set([])
    opt_succ_stats = dict()
    opt_fail_stats = dict()
    opt_unknown_stats = dict()
    
    for filename in os.listdir(vunitpath) : 
        filepath = os.path.join(vunitpath, filename)
        if not os.path.isdir(filepath):
            continue
        
        for filename2 in os.listdir(filepath):
            filepath2 = os.path.join(filepath, filename2)
            if not os.path.isdir(filepath2):
                continue
            
            vunits = identify_triples(filepath2)
            for vunit in vunits:
                basefilepath = get_basefilepath(vunit)
                (stdoutpath, stderrpath) = get_validator_stdouterr(basefilepath);
                res = check_validation_result(stdoutpath, stderrpath, False, False, vunit)
                
                (srcpath, hintpath, tgtpath) = vunit
                hintfile = open(hintpath)
                data = json.load(hintfile)
                
                opt_name = data["opt_name"]

                if opt_name not in opt_names :
                    opt_succ_stats[opt_name] = 0
                    opt_fail_stats[opt_name] = 0
                    opt_unknown_stats[opt_name] = 0
                    opt_names.add(opt_name)

                if res == 1 : 
                    # succeeded
                    opt_succ_stats[opt_name] += 1
                elif res == 0 : 
                    # failed
                    opt_fail_stats[opt_name] += 1
                elif res == -1 : 
                    # unknown
                    opt_unknown_stats[opt_name] += 1

    if arg_results.showoptimizations:
        keys = list(opt_names)
        keys.sort()
        idx = 1
        for key in keys:
            succ = opt_succ_stats[key]
            fail = opt_fail_stats[key]
            unknown = opt_unknown_stats[key]
            if unknown == 0 and fail == 0 : 
                print "{0}. {1} \t: {2} time(s) appeared (all success)".format(idx, key, (succ + fail + unknown))
            else : 
                print "{0}. {1} \t: {2} time(s) appeared ({3} fail(s), {4} unknown(s))".format(idx, key, (succ + fail + unknown),
                    fail, unknown)
            idx = idx + 1
