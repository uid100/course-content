print("================================================================")
print("                   Baseball Team Manager")
print()
print("This program calculates the batting average for a player based")
print("on the player's official number of at bats and hits.")
print("================================================================")
print()

# get input
name = input("Player's name: ")
at_bats = int(input("Official number of at bats: "))
hits = int(input("Number of hits: "))
print()

# calculate batting average
avg = hits / at_bats
avg = round(avg, 3)

# display result
print(name + "'s batting average is", avg)
