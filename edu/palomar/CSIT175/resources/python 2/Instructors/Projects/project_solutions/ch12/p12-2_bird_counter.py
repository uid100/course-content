#!/usr/bin/env python3

import pickle

FILENAME = "birds.bin"

def write_birds(birds):
    with open(FILENAME, "wb") as file:
        pickle.dump(birds, file)

def read_birds():
    birds = {}
    try:
        with open(FILENAME, "rb") as file:
            birds = pickle.load(file)
        return birds
    except FileNotFoundError:
        return birds

def main():
    print("Bird Counter program")
    print()

    print("Enter 'x' to exit")
    print()
    
    birds = read_birds()
    while True:
        name = input("Enter name of bird: ").title()
        if name == "X": 
            break

        if name in birds:
            birds[name] += 1
        else:
            birds[name] = 1


    # write dictionary to file
    write_birds(birds)
    
    # sort names alphabetically
    names = list(birds.keys())
    names.sort()

    print()
    print("{:15} {:5}".format("Name", "Count"))
    print("{:15} {:5}".format("="*15, "="*15))
    for name in names:
        count = birds[name]
        print("{:15} {:<5d}".format(name, count))


if __name__ == "__main__":
    main()
