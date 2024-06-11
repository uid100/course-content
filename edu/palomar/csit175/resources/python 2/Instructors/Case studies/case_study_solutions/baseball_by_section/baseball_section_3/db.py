import csv
from objects import Player, Lineup

FILENAME = "players.txt"

def read_players():
    try:
        lineup = Lineup()
        with open(FILENAME, newline="") as file:
            reader = csv.reader(file)
            for row in reader:
                player = Player(row[0], row[1], row[2], row[3], row[4])
                lineup.add(player)
        return lineup
    except FileNotFoundError:
        return None

def write_players(lineup):
    with open(FILENAME, "w") as file:
        for player in lineup:
            file.write(player.firstName + ",")
            file.write(player.lastName + ",")
            file.write(player.position + ",")
            file.write(player.atBats + ",")
            file.write(player.hits + "\n")

