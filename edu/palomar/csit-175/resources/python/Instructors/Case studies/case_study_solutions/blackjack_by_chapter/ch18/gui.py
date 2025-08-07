#!/usr/bin/env python3

import locale as lc
from datetime import datetime

import tkinter as tk
from tkinter import ttk

import db
from objects import Card, Deck, Hand, Session

# Set locale
result = lc.setlocale(lc.LC_ALL, "")
if result == "C":
    lc.setlocale(lc.LC_ALL, "en_US")        

class BlackjackFrame(ttk.Frame):
    def __init__(self, parent):
        ttk.Frame.__init__(self, parent, padding="10 10 10 10")
        self.parent = parent

        # Define string variables for text entry fields
        self.money = tk.StringVar()
        self.bet = tk.StringVar()
        self.dealerCards = tk.StringVar()
        self.dealerPoints = tk.StringVar()
        self.playerCards = tk.StringVar()
        self.playerPoints = tk.StringVar()
        self.result = tk.StringVar()

        # Read last session from db and set money to starting money
        db.connect()
        self.session = db.get_last_session()
        self.session.startMoney = self.session.stopMoney
        self.session.startTime = str(datetime.now())

        # Initialize two monetary variables
        self.moneyAmount = self.session.startMoney
        self.betAmount = 0

        # Initialize hands
        self.dealerHand = None
        self.playerHand = None
        self.gameOver = True

        # Inititalize components
        self.initComponents()

        # Display current money amount
        self.displayMoney()

    def initComponents(self):
        self.pack()
        
        # Display the grid of labels and text entry fields
        ttk.Label(self, text="Money:").grid(
            column=0, row=0, sticky=tk.E)
        ttk.Entry(self, width=25, textvariable=self.money,
                  state="readonly").grid(
            column=1, row=0, sticky=tk.W)

        ttk.Label(self, text="Bet:").grid(
            column=0, row=1, sticky=tk.E)
        ttk.Entry(self, width=25, textvariable=self.bet).grid(
            column=1, row=1, sticky=tk.W)

        ttk.Label(self, text="DEALER").grid(
            column=0, row=2, sticky=tk.E)
        
        ttk.Label(self, text="Cards:").grid(
            column=0, row=3, sticky=tk.E)
        ttk.Entry(self, width=50, textvariable=self.dealerCards,
                  state="readonly").grid(
            column=1, row=3, sticky=tk.W)

        ttk.Label(self, text="Points:").grid(
            column=0, row=4, sticky=tk.E)
        ttk.Entry(self, width=25, textvariable=self.dealerPoints,
                  state="readonly").grid(
            column=1, row=4, sticky=tk.W)

        ttk.Label(self, text="YOU").grid(
            column=0, row=5, sticky=tk.E)
        
        ttk.Label(self, text="Cards:").grid(
            column=0, row=6, sticky=tk.E)
        ttk.Entry(self, width=50, textvariable=self.playerCards,
                  state="readonly").grid(
            column=1, row=6, sticky=tk.W)

        ttk.Label(self, text="Points:").grid(
            column=0, row=7, sticky=tk.E)
        ttk.Entry(self, width=25, textvariable=self.playerPoints,
                  state="readonly").grid(
            column=1, row=7, sticky=tk.W)

        self.makeButtons()

        ttk.Label(self, text="RESULT:").grid(
            column=0, row=9, sticky=tk.E)
        ttk.Entry(self, width=50, textvariable=self.result,
                  state="readonly").grid(
            column=1, row=9, sticky=tk.W)

        self.makeButtons2()

        for child in self.winfo_children():
            child.grid_configure(padx=5, pady=3)

    def makeButtons(self):
        # Create a frame to store the two buttons
        buttonFrame = ttk.Frame(self)

        # Add the button frame to the bottom row of the main grid
        buttonFrame.grid(column=1, row=8, sticky=tk.W)

        # Add two buttons to the button frame
        ttk.Button(buttonFrame, text="Hit", command=self.hit) \
            .grid(column=0, row=0)
        ttk.Button(buttonFrame, text="Stand", command=self.stand) \
            .grid(column=1, row=0)

    def makeButtons2(self):
        # Create a frame to store the two buttons
        buttonFrame = ttk.Frame(self)

        # Add the button frame to the bottom row of the main grid
        buttonFrame.grid(column=1, row=10, sticky=tk.W)

        # Add two buttons to the button frame
        ttk.Button(buttonFrame, text="Play", command=self.play) \
            .grid(column=0, row=0)
        ttk.Button(buttonFrame, text="Exit", command=self.exit) \
            .grid(column=1, row=0)

    def startGame(self):
        self.gameOver = False
        self.displayMoney()

        self.deck = Deck()
        self.deck.shuffle()        

        self.dealerHand = Hand()
        self.playerHand = Hand()

        # deal two cards to player and one to the dealer
        self.playerHand.addCard(self.deck.dealCard())
        self.playerHand.addCard(self.deck.dealCard())
        self.dealerHand.addCard(self.deck.dealCard())

        # display cards
        self.displayDealer()
        self.displayPlayer()
        
    def displayDealer(self):
        if self.dealerHand != None:
            cards = ""
            for card in self.dealerHand:
                cards += card.rank + "  "
            self.dealerCards.set(cards)
            self.dealerPoints.set(str(self.dealerHand.points()))        

    def displayPlayer(self):
        if self.playerHand != None:
            cards = ""
            for card in self.playerHand:
                cards += card.rank + "  "
            self.playerCards.set(cards)
            self.playerPoints.set(str(self.playerHand.points()))

    def displayMoney(self):
        self.money.set(lc.currency(self.moneyAmount))
        
    def clearFields(self):
        self.dealerCards.set("")
        self.dealerPoints.set("")        
        self.playerCards.set("")
        self.playerPoints.set("")
        self.bet.set("")
        self.result.set("")
        
    def hit(self):
        if self.betAmount == 0:
            self.result.set("You must place a bet to play.")
        elif self.gameOver == True:
            self.result.set("Game is over. Click Play to start new game.")
        else:            
            self.result.set("")

            # add to player hand
            self.playerHand.addCard(self.deck.dealCard())
            self.displayPlayer()

            # check result
            self.checkResult()

    def stand(self):
        if self.betAmount == 0:
            self.result.set("You must place a bet to play.")
        elif self.gameOver == True:
            self.result.set("Game is over. Click Play to start new game.")
        else:            
            self.result.set("")

            #get dealer hand
            while self.dealerHand.points() < 17:        
                self.dealerHand.addCard(self.deck.dealCard())
            self.displayDealer()

            # check result
            self.checkResult()

    def play(self):
        if self.gameOver == True:
            # set bet amount
            try:
                self.betAmount = float(self.bet.get())
            except ValueError:
                self.betAmount = 0

            if self.betAmount == 0:
                self.result.set("You must place a bet to play.")
            else:
                self.startGame()            
                self.result.set("")

    def exit(self):
        self.session.stopTime = str(datetime.now())
        self.session.addedMoney = 0
        self.session.stopMoney = self.moneyAmount
        db.add_session(self.session)
        db.close()
        self.parent.destroy()

    def checkResult(self):
        # check result of hand
        player_points = self.playerHand.points()
        dealer_points = self.dealerHand.points()
        bet = self.betAmount
        self.result.set("")
        if player_points > 21:    
            self.moneyAmount -= bet
            self.result.set("Sorry. You busted. You lose.")
            self.gameOver = True
        elif dealer_points > 21:
            self.result.set("Yay! The dealer busted. You win!")
            self.moneyAmount += bet
            self.gameOver = True
        elif self.dealerHand.count() > 1:
            if player_points == 21 and len(player_hand) == 2:
                if dealer_points == 21 and len(dealer_hand) == 2:
                    self.result.set("Dang, dealer has blackjack too. You push.")
                else:
                    self.result.set("Blackjack! You win!")
                    self.moneyAmount += bet * 1.5
            elif player_points > dealer_points:
                self.result.set("Hooray! You win!")
                self.moneyAmount += bet
            elif player_points == dealer_points:    
                self.result.set("You push.")
            elif player_points < dealer_points:    
                self.result.set("Sorry. You lose.")
                self.moneyAmount -= bet
            else:
                self.result.set("I am not sure what happened.")
            self.gameOver = True

        self.displayMoney()

if __name__ == "__main__":
    root = tk.Tk()
    root.title("Blackjack")
    BlackjackFrame(root)
    root.mainloop()
