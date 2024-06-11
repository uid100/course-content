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

def main():
    display_separator()
    display_title()
    display_menu()
    display_separator()

    while True:
        option = int(input("Menu option: "))            
        if option == 1:
            print("Calculate batting average...")
            at_bats = int(input("Official number of at bats: "))
            hits = int(input("Number of hits: "))
            avg = get_batting_avg(at_bats, hits)
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
