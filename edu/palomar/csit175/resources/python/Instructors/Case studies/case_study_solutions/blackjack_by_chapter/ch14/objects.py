#!/usr/bin/env python3

import random

class Card:
    def __init__(self, rank, suit, value):
        self.rank = rank
        self.suit = suit
        self.value = value

    def getStr(self):
        return self.rank + " of " + self.suit

class Deck:
    def __init__(self):
        self.__deck = []
        ranks = ["Ace", "2", "3", "4", "5", "6", "7", "8", "9", "10",
                 "Jack", "Queen", "King"]
        suits = ["Clubs", "Diamonds", "Hearts", "Spades"]
        for suit in suits:
            for rank in ranks:
                if rank == "Ace":
                    value = 11
                elif rank == "Jack" or rank == "Queen" or rank == "King":
                    value = 10
                else:
                    value = int(rank)           
                self.__deck.append(Card(rank, suit, value))

    def shuffle(self):
        random.shuffle(self.__deck)

    def dealCard(self):
        return self.__deck.pop()    

    
class Hand:
    def __init__(self):
        self.__cards = []

    def addCard(self, card):
        self.__cards.append(card)

    def getCard(self, index):
        return self.__cards[index]

    def count(self):
        return len(self.__cards)

    def points(self):
        points = 0
        ace_count = 0
        for card in self.__cards:
            if card.rank == "Ace":
                ace_count += 1
            points += card.value

        # adjust points based on number of aces
        if ace_count > 0 and points > 21:
            points = points - (ace_count * 10)
        if ace_count > 1 and points <= 11:
            points += 10
        return points


def main():
    print("Cards - Tester")
    print()

    # create and shuffle deck
    deck = Deck()
    deck.shuffle()

    # test hand
    print("HAND")
    hand = Hand()
    for i in range(3):
        hand.addCard(deck.dealCard())

    for i in range(hand.count()):
        card = hand.getCard(i)
        print(card.getStr())

    print("Hand points:", hand.points())


if __name__ == "__main__":
    main()
