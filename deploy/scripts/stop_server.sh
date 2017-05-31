#!/bin/bash
# just a comment
status codedeploydemo-uwsgi
app_running=$?
if [[ $app_running -eq 0 ]]; then
    sudo stop codedeploydemo-uwsgi
fi
