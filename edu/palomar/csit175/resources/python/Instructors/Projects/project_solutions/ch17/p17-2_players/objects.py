class Player:
    def __init__(self, name, wins=0, losses=0, ties=0, id=0):
        self.name = name
        self.wins = wins
        self.losses = losses
        self.ties = ties
        self.id = id

    def getGames(self):
        games = self.wins + self.losses + self.ties
        return games

def main():
    player = Player("Joel")
    print(player.id, player.name, player.wins, player.getGames())    

if __name__ == "__main__":
    main()
