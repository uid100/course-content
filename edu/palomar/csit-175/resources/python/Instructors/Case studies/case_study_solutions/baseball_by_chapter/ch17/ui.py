import db
from objects import Player, Lineup
from datetime import date, datetime

POSITIONS = ("C", "1B", "2B", "3B", "SS", "LF", "CF", "RF", "P")

def add_player(players):    
    first_name = input("First name: ")
    last_name = input("Last name: ")
    position = get_player_position()
    at_bats = get_at_bats()
    hits = get_hits()
    bat_order = players.length() + 1

    player = Player(bat_order, first_name, last_name, position, at_bats, hits)
    db.add_player(player)
    players.add(player)
    print(player.getFullName() + " was added.\n")

def get_player_position():
    while True:
        position = input("Position: ")
        position = position.upper()
        if position in POSITIONS:
            return position
        else:
            print("Invalid position. Try again.")
            display_positions()

def get_at_bats():
    while True:
        try:
            at_bats = int(input("At bats: "))
            return at_bats
        except ValueError:
            print("Invalid integer. Try again.")

def get_hits():
    while True:
        try:
            hits = int(input("Hits: "))
            return hits
        except ValueError:
            print("Invalid integer. Try again.")

def get_lineup_number(players, prompt):
    while True:
        try:
            number = int(input(prompt))
        except ValueError:
            print("Invalid integer. Please try again.")
            continue

        if number < 1 or number > players.length():
            print("Invalid player number. " +
                  "Please try again.")
        else:
            break

    return number

def delete_player(players):
    number = get_lineup_number(players, "Number: ")
    player = players.remove(number)
    db.delete_player(player)
    print(player.getFullName() + " was deleted.\n")

def move_player(players):
    old_number = get_lineup_number(players, "Current lineup number: ")
    new_number = get_lineup_number(players, "New lineup number: ")
    player = players.move(old_number, new_number)
    db.update_bat_order(players)
    print(player.getFullName() + " was moved.\n")

def edit_player_position(players):
    number = get_lineup_number(players, "Lineup number: ")
    player = players.get(number)
    print("You selected " + player.getFullName() + " POS=" + player.position)
    position = get_player_position()
    player.position = position
    db.update_player(player)
    print(player.getFullName() + " was updated.\n")

def edit_player_stats(players):
    number = get_lineup_number(players, "Lineup number: ")
    player = players.get(number)
    print("You selected " + player.getFullName() +
          " AB=" + str(player.atBats) +
          " H=" + str(player.hits))
    at_bats = get_at_bats()
    hits = get_hits()
    player.atBats = at_bats
    player.hits = hits
    db.update_player(player)
    print(player.getFullName() + " was updated.\n")

def display_lineup(players):
    if players == None:
        print("There are currently no players in the lineup.")        
    else:
        header = "{:3}{:35}{:>6}{:>6}{:>6}{:>8}"
        line = "{:<3d}{:35}{:>6}{:6d}{:6d}{:8.3f}"
        print(header.format("", "Player", "POS", "AB", "H", "AVG"))
        print("-" * 64)
        i = 1
        for player in players:
            print(line.format(i, player.getFullName(), player.position,
                              player.atBats, player.hits, player.getBattingAvg()))
            i += 1
    print()    

def display_separator():
    print("=" * 64)

def display_title():
    print("                   Baseball Team Manager")

def display_dates():
    print()

    now = datetime.now()    
    current_date = datetime(now.year, now.month, now.day)
    print("CURRENT DATE:    " + current_date.strftime("%Y-%m-%d"))

    game_date_str = input("GAME DATE:       ")
    if game_date_str == "":
        print()
        return
    game_date = datetime.strptime(game_date_str, "%Y-%m-%d")
    time_span = game_date - current_date

    if time_span.days > -1:
        print("DAYS UNTIL GAME: " + str(time_span.days))
    print()    

def display_menu():
    print("MENU OPTIONS")
    print("1 – Display lineup")
    print("2 – Add player")
    print("3 – Remove player")
    print("4 – Move player")
    print("5 – Edit player position")
    print("6 – Edit player stats")
    print("7 - Exit program")
    print()

def display_positions():
    print("POSITIONS")
    pos_str = ""
    for pos in POSITIONS:
        pos_str += pos + ", "
    pos_str = pos_str[:-2]        
    print(pos_str)

def main():
    display_separator()
    display_title()
    display_dates()
    display_menu()
    display_positions()

    db.connect()
    players = db.get_players()
    if players == None:
        print()
        print("Team data file could not be found.")
        print("You can create a new one if you want.")
        players = []        
    
    display_separator()
    
    while True:
        try:
            option = int(input("Menu option: "))
        except ValueError:
            print("Not a valid option. Please try again.\n")
            display_menu()
            continue
            
        if option == 1:
            display_lineup(players)
        elif option == 2:
            add_player(players)
        elif option == 3:
            delete_player(players)
        elif option == 4:
            move_player(players)
        elif option == 5:
            edit_player_position(players)
        elif option == 6:
            edit_player_stats(players)
        elif option == 7:
            db.close()
            print("Bye!")
            break
        else:
            print("Not a valid option. Please try again.\n")
            display_menu()

if __name__ == "__main__":
    main()
