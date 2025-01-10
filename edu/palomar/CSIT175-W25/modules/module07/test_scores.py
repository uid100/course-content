#!/usr/bin/env python3

# YOUR NAME HERE
# Palomar College, CSIT 175
# test_scores: calculate student grades and save gradebook

import csv
import random


# declare constants
ASSIGNMENTS = 12
students = ['Alice', 'Bob', 'Charlie', 'David', 'Emma',
            'Frank', 'Grace', 'Henry', 'Ivy', 'Jack']


# be careful with indentation!

# build the file header
def build_header():
    header = ["Name"]
    for i in range(ASSIGNMENTS):
        header.append(f"ex.{i}")
    header.append("average")
    header.append("grade")
    return header


# calculate final grade
def assign_grade(score):
    if score >= 90:
        grade = 'A'
    elif score >= 80:
        grade = 'B'
    elif score >= 70:
        grade = 'C'
    elif score >= 60:
        grade = 'D'
    else:
        grade = 'F'
    return grade


# get (pseudo-random) assignment scores
def get_scores(student_name):
    # reset grades
    total = 0
    grades = []
    grades.append(student_name)
    for i in range(ASSIGNMENTS):
        score = random.randint(76, 100)
        total += score
        grades.append(score)
    average_score = round(total / ASSIGNMENTS)
    grades.append(round(average_score))
    grades.append(assign_grade(average_score))
    return grades


def main():
    # create the new file
    with open("gradebook.csv", "w", newline="") as output_file:
        gradebook = csv.writer(output_file)
        # build and write the file header
        gradebook.writerow(build_header())
        # build and write each student record
        for student in students:
            gradebook.writerow(get_scores(student))
    print(f"{len(students)} records written.")


if __name__ == "__main__":
    # initialize random object to create 'repeatable' randomness
    random.seed(42)
    main()
