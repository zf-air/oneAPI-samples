#!/bin/bash
source /opt/intel/oneapi/setvars.sh > /dev/null 2>&1
icpx -fsycl lab/reduction_slm.cpp 
if [ $? -eq 0 ]; then ./a.out; fi
