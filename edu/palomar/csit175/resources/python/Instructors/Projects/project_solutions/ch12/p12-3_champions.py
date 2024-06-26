#!/usr/bin/env python3

import csv

FILENAME = "world_cup_champions.txt"

def read_champions():
    champions = {}
    with open(FILENAME, newline="") as file:
        reader = csv.reader(file)
        for row in reader:
            year = row[0]
            country = row[1]
            if country in champions:
                data = champions[country]
                data[0] += 1         # update count
                data[1].append(year) # update years
            else:
                if country.lower() == "country":  # don't add header row to dictionary
                    pass
                else:
                    count = 1
                    years = []
                    years.append(year)
                    data = [count, years]
                    champions[country] = data
    return champions

def main():
    champions = read_champions()

    print("FIFA World Cup Winners")
    print()
    print("{:15} {:5} {:15}".format("Country", "Wins", "Years"))
    print("{:15} {:5} {:15}".format("="*7, "="*4, "="*5))

    # sort names alphabetically
    countries = list(champions.keys())
    countries.sort()
    
    for country in countries:
        data = champions[country]
        count = data[0]
        years = data[1]
        years_str = ""
        for year in years:
            years_str += year + ", "
        years_str = years_str[:-2]
            
        print("{:15} {:<5d} {:15}".format(country, count, years_str))

if __name__ == "__main__":
    main()
