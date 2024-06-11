#!/usr/bin/env python3

# generate random VINs

import argparse
import random
import string

VIN_LENGTH = 17  # size of vehicle ID number


years = list(range(1990, 2023))  # Assuming cars from 1990 to 2022
makes = ['Toyota', 'Honda', 'Ford', 'Chevrolet', 'Nissan',
         'BMW', 'Mercedes-Benz', 'Audi', 'Volkswagen']
models = ['Camry', 'Accord', 'F-150', 'Silverado',
          'Altima', '3 Series', 'C-Class', 'A4', 'Golf']


class car:
    def __init__(this):
        this.year = random.choice(years)
        this.make = random.choice(makes)
        this.model = random.choice(models)
        this.vin = generate_vin()

    def to_string(this):
        return (f"{this.vin}, {this.year}, {this.make}, {this.model}")


def generate_vin():
    letters = string.ascii_uppercase
    digits = string.digits
    return ''.join(random.choice(letters + digits) for _ in range(VIN_LENGTH))


def generate_license_plate():
    letters = string.ascii_uppercase
    digits = string.digits
    return ''.join(random.choices(letters, k=3)) + '-' + ''.join(random.choices(digits, k=3))


def generate_random_color():
    colors = ['red', 'green', 'blue', 'yellow',
              'orange', 'purple', 'pink', 'cyan', 'magenta']
    return random.choice(colors)


def get_count():
    parser = argparse.ArgumentParser(description="Generate VIN list.")
    parser.add_argument("--count", type=int, default=20,
                        help="Number of items to process (default: 20)")
    args = parser.parse_args()
    return args.count


def get_car_list(count):
    cars = []
    for _ in range(count):
        cars.append(car().to_string())
    return cars


def main():
    cars = get_car_list(get_count())
    for _ in cars:
        print(_)

    print("\n----------\n")

    while len(cars) > 0:
        i = random.randint(0, len(cars)-1)
        car = cars.pop(i)
        print(f"{generate_license_plate()},{car[0:VIN_LENGTH]}")


if __name__ == "__main__":
    main()
