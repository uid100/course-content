print("================================================================")
print("                   Baseball Team Manager")
print("MENU OPTIONS")
print("1 – Calculate batting average")
print("2 - Exit program")
print("================================================================")

while True:
    option = int(input("Menu option: "))            
    if option == 1:
        print("Calculate batting average...")
        at_bats = int(input("Official number of at bats: "))
        hits = int(input("Number of hits: "))
        avg = hits / at_bats
        avg = round(avg, 3)
        print("Batting average:", avg)
        print()
    elif option == 2:
        print("Bye!")
        break
    else:
        print("Not a valid option. Please try again.")
        print()
