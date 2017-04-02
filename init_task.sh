#!/bin/bash
# Prepare nessary files to start work on task
# Author: Alex K
#TODO

TASK=$1
SOLUTION_TEMPLATE='solution.txt'
WORK_PROCESS_TEMPLATE='work_flow.txt'
SOLUTION="$TASK"'_s.txt'
WORK_PROCESS="$TASK"'_wp.txt'
SOLUTION_PATH="$TASK"'/'"$SOLUTION"
WORK_PROCESS_PATH="$TASK"'/'"$WORK_PROCESS"

#echo "$TASK"
#echo "$SOLUTION_TEMPLATE"
#echo "$WORK_PROCESS_TEMPLATE"
#echo "$SOLUTION"
#echo "$WORK_PROCESS"
#echo "$SOLUTION_PATH"
#echo "$WORK_PROCESS_PATH"

if [ -z "$TASK" ];
then
     echo 'error: please, set parameter <TASK_ID>'
     exit 1
fi

if [ -d "$TASK" ];
then
     echo 'error: directory '"$TASK"' is already exist'
     exit 1
fi

mkdir "$TASK"
cp "$SOLUTION_TEMPLATE" "$SOLUTION_PATH"
cp "$WORK_PROCESS_TEMPLATE" "$WORK_PROCESS_PATH"
