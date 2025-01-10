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

class Lineup:
    def __init__(self):
        self.__list = []

    def add(self, player):
        return self.__list.append(player)
    
    def remove(self, number):
        return self.__list.pop(number-1)
    
    def get(self, number):
        return self.__list[number-1]
    
    def set(self, number, player):
        self.__list[number-1] = player
        
    def move(self, oldNumber, newNumber):
        player = self.__list.pop(oldNumber-1)
        self.__list.insert(newNumber-1, player)
        return player

    def length(self):
        return len(self.__list)
    
    def __iter__(self):
        self.__index = -1   # initialize index for each iteration
        return self

    def __next__(self):
        if self.__index >= len(self.__list)-1:
            raise StopIteration()
        self.__index += 1
        player = self.__list[self.__index]
        return player
        
        
        
def main():
    lineup = db.read_players()
    for player in lineup:
        print(player.getFullName(), player.getBattingAvg())
    print("Bye!")

if __name__ == "__main__":
    main()
