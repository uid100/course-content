import csv

FILENAME = "players.txt"

def read_players():
    players = []
    with open(FILENAME, newline="") as file:
        reader = csv.reader(file)
        for row in reader:
            players.append(row)
    return players

def write_players(players):
    with open(FILENAME, "w", newline="") as file:
        writer = csv.writer(file)
        writer.writerows(players)
