#!/usr/bin/env python3

# YOUR NAME HERE
# Palomar College, CSIT 175
# test_scores: read from data file and count votes


def find_string(list, name):
    i = 0
    for _ in list:
        if _ == name:
            return i
        i += 1
    return -1


with open("votes.txt", "r") as f:
    votes = f.read().splitlines()


names = []
count = []
for _ in votes:
    if find_string(names, _) < 0:
        names.append(_)
        count.append(0)
    i = find_string(names, _)
    count[i] += 1

print(names)
print(count)
