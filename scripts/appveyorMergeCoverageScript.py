#!/usr/bin/env python

import glob
import subprocess

if __name__ == '__main__':
    cov_files = list(glob.glob('cov-report*.bin'))
    base_cmd = ['OpenCppCoverage', '--quiet', '--export_type=cobertura:cobertura.xml'] + ['--input_coverage={}'.format(f) for f in cov_files]
    subprocess.run(base_cmd)
