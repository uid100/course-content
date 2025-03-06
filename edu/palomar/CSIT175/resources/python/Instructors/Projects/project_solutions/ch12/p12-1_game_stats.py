#!/usr/bin/env python3

def display_names(players):
    names = list(players.keys())
    names.sort()
    print("ALL PLAYERS: ")
    for name in names:
        print(name)
    print()


def display_stats(players):
    name = input("Enter a player name: ").title()
    if name in players.keys():
        player = players[name]
        print("Wins:   " + str(player["wins"]))
        print("Losses: " + str(player["losses"]))
        print("Ties:   " + str(player["ties"]))
    else:
        print("There is no player named " + name + ".")
    print()

def main():
    print("Game Stats program")
    print()

    players = {
        "Joel": {"wins": 32, "losses": 14, "ties": 17},
        "Elizabeth": {"wins": 41, "losses": 3, "ties": 22},
        "Mike": {"wins": 8, "losses": 19, "ties": 11}
    }

    display_names(players)

    while True:
        display_stats(players)

        # ask if user wants to continue
        result = input("Continue? (y/n): ")
        print()
        if result.lower() != "y":
            print("Bye!")
            break      

        


if __name__ == "__main__":
    main()
