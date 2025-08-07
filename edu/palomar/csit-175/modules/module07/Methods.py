#!/usr/bin/env python3


def find_string(the_list, find_val):
    list_len = len(the_list)
    found = False
    index = 0
    while index < list_len and found == False:
        # convert both strings to upper case for the comparison
        if find_val.upper() == the_list[index].upper():
            return index
        index += 1
    return -1


def max_value(list):
    max = list[0]
    for nextValue in list:
        if nextValue > max:
            max = nextValue
    return max


if __name__ == "__main__":
    numbers = [5, 3, 2, 7, 11, 14, 27, 12]

    print(f"{max_value(numbers)} is largest.")
