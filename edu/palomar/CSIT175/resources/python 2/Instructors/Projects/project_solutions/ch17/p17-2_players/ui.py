#!/usr/bin/env/python3

import db
from objects import Player

def display_title():
    print("Player Manager")
    print()    

def display_menu():
    print("COMMAND MENU")
    print("view - View players")
    print("add  - Add a player")
    print("del  - Delete a player")
    print("exit - Exit program")
    print()    

def display_players():
    players = db.get_players()
    line_format1 = "{:10}{:>10}{:>10}{:>10}{:>10}"
    line_format2 = "{:10}{:10d}{:10d}{:10d}{:10d}"
    print(line_format1.format("Name", "Wins", "Losses", "Ties", "Games"))
    print("-" * 50)
    for player in players:
        print(line_format2.format(player.name, player.wins,
                                  player.losses, player.ties,
                                  player.getGames()))
    print()    

def add_player():
    name = input("Name: ").title()
    wins = int(input("Wins: "))
    losses = int(input("Losses: "))
    ties = int(input("Ties: "))
    player = Player(name, wins, losses, ties)
    db.add_player(player)    
    print(player.name + " was added to database.\n")

def delete_player():
    name = input("Name: ").title()
    db.delete_player(name)
    print(name + " was deleted from database.\n")
        
def main():
    db.connect()
    display_title()
    display_menu()
    while True:        
        command = input("Command: ")
        if command == "view":
            display_players()
        elif command == "add":
            add_player()
        elif command == "del":
            delete_player()
        elif command == "exit":
            break
        else:
            print("Not a valid command. Please try again.\n")
            display_menu()
    db.close()
    print("Bye!")

if __name__ == "__main__":
    main()
