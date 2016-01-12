#!/usr/bin/env python3

import os
import sys
import subprocess
import logging

logger = logging.getLogger()

def is_clean():
    return_code = subprocess.call(["git", "diff", "--quiet", "HEAD"])
    return not return_code

def get_commit_hash():
    return subprocess.check_output(["git", "rev-parse", "HEAD"]).decode('ascii').strip()

def get_result_path():
    commit_hash = get_commit_hash()
    results_path = os.path.join(os.path.dirname(os.path.abspath(__file__)), "results")

    if is_clean():
        return os.path.join(results_path, commit_hash)

    for i in range(0, 1000):
        path = os.path.join(results_path, "%s+%03d" % (commit_hash, i))

        if not os.path.exists(path):
            return path

    logger.error('Too much results')
    sys.exit(1)

if __name__ == "__main__":
    result_path = get_result_path()

    if os.path.exists(result_path):
        logger.error('Result already created')
        sys.exit(1)

    os.mkdir(result_path)

    # TODO: run opt against tests/*.ll and write validation units in `result_path`
