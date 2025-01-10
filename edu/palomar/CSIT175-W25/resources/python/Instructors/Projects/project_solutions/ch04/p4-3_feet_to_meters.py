#!/usr/bin/env python3

import conversions as c

# welcome message function
def fm_welcome():
    print("Feet and Meters Converter")
    print()

# display menu function
def fm_menu(): 
    print("Conversions Menu:")
    print("a. Feet to Meters")
    print("b. Meters to Feet")

def main():
    fm_welcome()
    while True:
        fm_menu()
        choice = input("Select a conversion (a/b): ")
        print()
        if choice == "a":
            feet = float(input("Enter feet: "))
            meters = c.to_meters(feet)   # call to_meters function from feet_meters module
            print(round(meters, 2), "meters")        
        elif choice == "b":
            meters = float(input("Enter meters: "))
            feet = c.to_feet(meters)
            print(round(feet, 2), "feet")
        else:
            print("You did not enter a valid selection.")
        print()            

        more = input("Would you like to perform another conversion? (y/n): ")
        print()
        
        if more != "y":
            print("Thanks, bye!")
            break    
    
if __name__ == "__main__":
    main()
