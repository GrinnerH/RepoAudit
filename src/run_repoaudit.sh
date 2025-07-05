#!/bin/bash
SCAN_TYPE=metascan
LANGUAGE=Python
MODEL=gpt-4o
BUG_TYPE=NPD
PROJECT=toy

# For demo/test run
python3 repoaudit.py \
    --language $LANGUAGE \
    --model-name $MODEL \
    --project-path ../benchmark/${LANGUAGE}/${PROJECT} \
    --bug-type $BUG_TYPE \
    --is-reachable \
    --temperature 0.0 \
    --scan-type dfbscan \
    --call-depth 3 \
    --max-neural-workers 30

# python3 repoaudit.py \
#     --language $LANGUAGE \
#     --model-name $MODEL \
#     --project-path ../benchmark/${LANGUAGE}/${PROJECT} \
#     --temperature 0.0 \
#     --scan-type $SCAN_TYPE \
#     --max-neural-workers 30
