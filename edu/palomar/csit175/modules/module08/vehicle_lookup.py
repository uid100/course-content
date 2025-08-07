#!/usr/bin/env python3

# YOUR NAME HERE
# Palomar CSIT-175
# Find a vehicle by license number

import os  # getcwd()
import csv  # dictreader()


VEHICLE_LIST = "cars.csv"
DMV_DATABASE = "registration.csv"


class DataRecordSizeError(Exception):
    def __init__(self, message):
        super().__init__(message)


def read_registration_list(filename):
    # write the code to read the data into the python dictionary using the pattern below
    license_numbers = {}  # {"lic": "vin"}
    try:
        with open(filename, "r") as datafile:
            reader = csv.reader(datafile)
            for data_entry in reader:
                if len(data_entry) != 2:
                    raise DataRecordSizeError("Data Record Size Error")
                lic, vin = data_entry
                license_numbers[lic] = vin
    except FileNotFoundError:
        print(filename, "not found.")
    except Exception as e:
        print("Error:", e)
    return license_numbers


def read_vehicle_list(filename):
    # write the code to read the data into the python dictionary using the pattern below
    cars = {}  # {"vin": {"year": "", "make": "", "model": ""}}
    try:
        with open(filename, "r") as datafile:
            reader = csv.reader(datafile)
            for data_entry in reader:
                vin, year, make, model = data_entry
                cars[vin] = {'year': year, 'make': make, 'model': model}
    except FileNotFoundError:
        print(filename, "not found.")
    except Exception as e:
        print("Error:", e)
    return cars


def main():
    license_plates = [
        "DTJ-720", "GUO-657", "HMQ-267", "TDJ-576", "FBD-049",
        "AJQ-950", "KRP-582", "YAH-850", "UOZ-666", "LUW-876"
    ]

    registration = read_registration_list(DMV_DATABASE)
    cars = read_vehicle_list(VEHICLE_LIST)
    for lic in license_plates:
        if lic in registration:
            vehicle = registration[lic]
            if vehicle in cars:
                # output format:  ###-###:  YYYY  Make
                print(f"{lic}: {cars[vehicle]['year']} {
                      cars[vehicle]['make']}")
            else:
                print(f"\t{lic=} is valid, \n"
                      + f"\t{vehicle} not found in {VEHICLE_LIST}")
        else:
            print(f"\t{lic}: not in {DMV_DATABASE}")


if __name__ == '__main__':
    main()
