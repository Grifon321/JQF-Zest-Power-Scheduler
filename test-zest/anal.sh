#!/bin/bash

if [ "$#" -ne 6 ]; then
    echo "Usage: $0 NAME NUM_REPS TIMEOUT CLASS RESULT_DIR JQF_DIR"
    exit 1
fi

NAME=$1
LOG_FILE="log/${NAME}.log"
NUM_REPS=$2
TIMEOUT=$3
CLASS=$4
RESULT_DIR=$5
JQF_DIR=$6

touch $LOG_FILE
echo "Start time: $(date)" > $LOG_FILE
echo "Script triggered with [ $NUM_REPS ] reps, [ $TIMEOUT ] timeout, [ $CLASS ] class, \
[ $RESULT_DIR ] result_dir, [ $JQF_DIR ] jqf_dir" >> $LOG_FILE

for rep in $(seq 1 $NUM_REPS);
do
    REP_DIR="${RESULT_DIR}/${NAME}-w${rep}-${TIMEOUT}"
    echo "----- Running repetion [ $rep ] for $CLASS -----" >> $LOG_FILE
    if [ -d ${REP_DIR} ]; then
        echo "Deleting ${REP_DIR}" >> $LOG_FILE
        rm -rf ${REP_DIR}
    fi
    if [ ! -d ${REP_DIR} ]; then
        echo "Initializing ${REP_DIR}" >> $LOG_FILE
        mkdir -p ${REP_DIR}
    fi
	sdate=$(date +%s)
    echo "Starting run at $(date)" >> $LOG_FILE
    timeout $TIMEOUT ${JQF_DIR}/bin/jqf-zest -c $(${JQF_DIR}/scripts/examples_classpath.sh) \
    edu.berkeley.cs.jqf.examples.$CLASS testWithGenerator ${REP_DIR} &
    PID=$!
    wait $PID
	edate=$(date +%s)
	if [ $((edate-sdate)) -lt 255600 ]; then
		echo "TIMEOUT ANAMOLY DETECED" >> $LOG_FILE
	fi
    echo "Ending run at $(date)" >> $LOG_FILE
done

echo "---- End of script reached at $(date) -----" >> $LOG_FILE