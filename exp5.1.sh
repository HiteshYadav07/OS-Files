#!/bin/bash

# Function to perform FCFS scheduling without arrival time
fcfs_without_arrival() {
    echo "Enter the number of processes:"
    read n
    declare -a pid bt wt tat ct

    # Input burst time for each process
    for ((i = 0; i < n; i++)); do
        echo "Enter Burst Time for Process $((i + 1)):"
        read bt[i]
        pid[i]=$((i + 1))
    done

    # Calculating Completion Time, Turnaround Time, and Waiting Time
    ct[0]=${bt[0]}
    tat[0]=${ct[0]}
    wt[0]=0

    for ((i = 1; i < n; i++)); do
        ct[i]=$((ct[i-1] + bt[i]))
        tat[i]=$((ct[i]))
        wt[i]=$((tat[i] - bt[i]))
    done

    # Displaying Results
    echo -e "\nPID\tBurst Time\tCompletion Time\tTurnaround Time\tWaiting Time"
    for ((i = 0; i < n; i++)); do
        echo -e "${pid[i]}\t${bt[i]}\t\t${ct[i]}\t\t${tat[i]}\t\t${wt[i]}"
    done
}

fcfs_without_arrival

