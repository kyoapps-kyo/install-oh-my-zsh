#!/bin/bash

COMMON_DIR=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
source ${COMMON_DIR}/ansi.sh

function call_function {
    func=$1
    desc=$2
    log_file=$3
    echo -n "===> ${desc}..."
    $func >> ${log_file} 2>&1
    ret=$?
    echo -n '    ['
    if [[ $ret -eq 0 ]]; then
        ansi --bold --green "DONE"
    else
        ansi --bold --red "ERROR"
    fi
    echo ']'
}