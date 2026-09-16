# Balloon Cost

## Problem

A contest has two problems and each solved problem earns a balloon. Green and purple balloons have different costs. Every participant is described by two binary values: the first indicates whether problem 1 was solved, and the second indicates whether problem 2 was solved.

There are two possible assignments of colors:

1. Green for problem 1 and purple for problem 2.
2. Purple for problem 1 and green for problem 2.

The goal is to find the cheaper total cost.

## Algorithm

For each test case:

1. Count the number of participants who solved problem 1.
2. Count the number who solved problem 2.
3. Compute the cost under the first color assignment.
4. Compute the cost under the second color assignment.
5. Print the smaller cost.

If `p1` and `p2` are the two solve counts, and `g` and `p` are the green and purple costs, the two totals are:

```text
cost1 = p1 × g + p2 × p
cost2 = p1 × p + p2 × g
```

## Correctness

Every participant who solved a problem requires exactly one balloon for that problem. Thus, the total cost for any fixed color assignment is the number of balloons for each problem multiplied by the corresponding balloon cost. The algorithm evaluates both permitted assignments and returns the smaller total, which is the minimum possible purchase cost.

## Complexity

For `N` participants, each participant is processed once.

| Measure | Complexity |
|---|---:|
| Time | `O(N)` per test case |
| Extra space | `O(1)` |

## Implementation

The solution is implemented in GNU Bash 5.0.17 in [`solution.sh`](solution.sh).

## Example

For green cost `9`, purple cost `6`, and the first sample case, the program counts the solved problems, calculates both assignments, and outputs the lower total: `69`.
