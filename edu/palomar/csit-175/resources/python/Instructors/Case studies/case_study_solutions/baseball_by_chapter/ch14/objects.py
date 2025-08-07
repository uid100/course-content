import db

class Player:
    def __init__(self, firstName, lastName,
                 position, atBats, hits):
        self.firstName = firstName
        self.lastName = lastName
        self.position = position
        self.atBats = atBats
        self.hits = hits

    def getFullName(self):
        fullName = self.firstName + " " + self.lastName
        return fullName
    
    def getBattingAvg(self):
        try:
            avg = int(self.hits) / int(self.atBats)
            return round(avg, 3)
        except ZeroDivisionError:
            return 0.0
       
def main():
    players = db.read_players()
    for player in players:
        print(player.getFullName(), player.getBattingAvg())
    print("Bye!")

if __name__ == "__main__":
    main()
