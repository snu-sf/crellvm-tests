#!/usr/bin/env python2

import os
import sys

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
        srcfilepath = os.path.join(test_outputdir, "{0}.src.bc".format(basefilename))
        tgtfilepath = os.path.join(test_outputdir, "{0}.tgt.bc".format(basefilename))

        if not os.path.exists(srcfilepath) : 
            logger.error("{0} does not exist!".format(srcfilename))
            sys.exit(1)
        if not os.path.exists(tgtfilepath) : 
            logger.error("{0} does not exist!".format(tgtfilename))
            sys.exit(1)
        
        srcpath_to_hintpath[srcfilepath] = hintfilepath
        tgtpath_to_hintpath[tgtfilepath] = hintfilepath
        triple_list.append((srcfilepath, hintfilepath, tgtfilepath))
     
    for eachsrcpath in srcpath_to_hintpath :
        if srcpath_to_hintpath[eachsrcpath] == "unpaired" : 
            logger.error("{0} is unpaired!! (It has no corresponding hint.json file)".format(eachsrcpath))
            sys.exit(1)
    for eachtgtpath in tgtpath_to_hintpath : 
        if tgtpath_to_hintpath[eachtgtpath] == "unpaired" : 
            logger.error("{0} is unpaired!! (It has no corresponding hint.json file)".format(eachtgtpath))
            sys.exit(1)
  
    return triple_list


