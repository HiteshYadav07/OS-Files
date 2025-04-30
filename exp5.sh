#!/bin/bash

# Function to perform FCFS scheduling with arrival time
fcfs_with_arrival() {
    echo "Enter the number of processes:"
    read n
    declare -a pid bt at wt tat ct

    # Input process details
    for ((i = 0; i < n; i++)); do
        echo "Enter Arrival Time and Burst Time for Process $((i + 1)):"
        read at[i] bt[i]
        pid[i]=$((i + 1))
    done

    # Sorting processes by Arrival Time
    for ((i = 0; i < n - 1; i++)); do
        for ((j = i + 1; j < n; j++)); do
            if (( at[i] > at[j] )); then
                temp=${at[i]}
                at[i]=${at[j]}
                at[j]=$temp

                temp=${bt[i]}
                bt[i]=${bt[j]}
                bt[j]=$temp

                temp=${pid[i]}
                pid[i]=${pid[j]}
                pid[j]=$temp
            fi
        done
    done

    # Calculating Completion Time, Turnaround Time, and Waiting Time
    ct[0]=$((at[0] + bt[0]))
    tat[0]=$((ct[0] - at[0]))
    wt[0]=$((tat[0] - bt[0]))

    for ((i = 1; i < n; i++)); do
        if ((ct[i-1] < at[i])); then
            ct[i]=$((at[i] + bt[i]))
        else
            ct[i]=$((ct[i-1] + bt[i]))
        fi
        tat[i]=$((ct[i] - at[i]))
        wt[i]=$((tat[i] - bt[i]))
    done

    # Displaying Results
    echo -e "\nPID\tArrival Time\tBurst Time\tCompletion Time\tTurnaround Time\tWaiting Time"
    for ((i = 0; i < n; i++)); do
        echo -e "${pid[i]}\t${at[i]}\t\t${bt[i]}\t\t${ct[i]}\t\t${tat[i]}\t\t${wt[i]}"
    done
}

fcfs_with_arrival

