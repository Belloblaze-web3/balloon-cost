#!/usr/bin/env bash

read -r test_cases

for ((case_no = 0; case_no < test_cases; case_no++)); do
    read -r green purple
    read -r participants
    problem1=0
    problem2=0

    for ((i = 0; i < participants; i++)); do
        read -r solved1 solved2
        problem1=$((problem1 + solved1))
        problem2=$((problem2 + solved2))
    done

    cost1=$((problem1 * green + problem2 * purple))
    cost2=$((problem1 * purple + problem2 * green))

    if (( cost1 < cost2 )); then
        printf '%d\n' "$cost1"
    else
        printf '%d\n' "$cost2"
    fi
done
