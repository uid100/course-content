def display_separator():
    print("================================================================")

def display_title():
    print("                   Baseball Team Manager")

def display_menu():
    print("MENU OPTIONS")
    print("1 – Calculate batting average")
    print("2 - Exit program")

def get_batting_avg(at_bats, hits):
    avg = hits / at_bats
    return round(avg, 3)

def get_int(prompt):
    while True:
        i = int(input(prompt))
        if i >= 0 and i <= 10000:
            return i
        else:
            print("Invalid integer. Must be from 0 to 10,000.")

def main():
    display_separator()
    display_title()
    display_menu()
    display_separator()

    while True:
        option = int(input("Menu option: "))            
        if option == 1:
            print("Calculate batting average...")
            at_bats = get_int("Official number of at bats: ")
            hits = get_int("Number of hits: ")
            avg = get_batting_avg(at_bats, hits)

            # make sure hits are not greater than at bats
            if hits > at_bats:
                print("Hits cannot be greater than at bats.")
                print()
                continue
            
            print("Batting average:", avg)
            print()
        elif option == 2:
            print("Bye!")
            break
        else:
            print("Not a valid option. Please try again.")
            display_menu()
            print()

if __name__ == "__main__":
    main()
