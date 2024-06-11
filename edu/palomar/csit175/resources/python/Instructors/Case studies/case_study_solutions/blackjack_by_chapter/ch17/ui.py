#!/usr/bin/env python3

from objects import Card, Deck, Hand, Session
import db

from datetime import time, datetime
import locale as lc

# set locale
result = lc.setlocale(lc.LC_ALL, "")
if result == "C":
    lc.setlocale(lc.LC_ALL, "en_US")

def display_title(start_time):
    print("BLACKJACK!")
    print("Blackjack payout is 3:2")
    print("Start time:", start_time.strftime("%I:%M:%S %p"))
    print()

def get_starting_money():
    while True:
        session = db.get_last_session()
        money = session.stopMoney
        if money == None:
            print("Could not read money from database.")
            print("Restarting with 100.")
            print()
            return 100.0
        else:                
            return money

def buy_more_chips(money):
    while True:
        try:
            amount = float(input("Amount: "))
        except ValueError:
            print("Invalid amount. Try again.")
            continue
        
        if amount > 0 and amount <= 10000:
            money += amount
            return money
        else:
            print("Invalid amount. Must be from 0 to 10,000.")

def get_bet(money):
    while True:
        try:
            bet = float(input("Bet amount: "))
        except ValueError:
            print("Invalid amount. Try again.")
            continue
            
        if bet < 5:
            print("The minimum bet is 5.")
        elif bet > 1000:
            print("The maximum bet is 1,000.")
        elif bet > money:
            print("You don't have enough money to make that bet.")
        else:
            return bet

def display_cards(hand, title):
    print(title.upper())
    for card in hand:
        print(card)
    print()

def play(deck, player_hand):
    while True:
        choice = input("Hit or stand? (hit/stand): ")
        print()

        if choice == "hit":
            player_hand.addCard(deck.dealCard())
            display_cards(player_hand, "YOUR CARDS: ")
            if player_hand.points() > 21:
                break
        elif choice == "stand":
            break
        else:
            print("Not a valid choice. Try again.")
    return player_hand

def main():
    # connect to db
    db.connect()
    
    start_time = datetime.now()   
    display_title(start_time)

    # get starting money
    money = get_starting_money()
    print("Money:", lc.currency(money, grouping=True))

    session = Session()
    session.startTime = str(start_time)
    session.startMoney = money

    # start loop
    while True:
        # make sure player has enough money for min bet
        if money < 5:
            print("You are out of money.")
            buy_more = input(
                "Would you like to buy more chips? (y/n): ").lower()
            if buy_more == "y":
                money = buy_more_chips(money)
                session.addedMoney += money
                print("Money:", lc.currency(money, grouping=True))
            else:
                break
        
        # get bet amount
        bet = get_bet(money)
        print()

        deck = Deck()
        deck.shuffle()

        dealer_hand = Hand()
        player_hand = Hand()

        # deal two cards to player and one to the dealer
        player_hand.addCard(deck.dealCard())
        player_hand.addCard(deck.dealCard())
        dealer_hand.addCard(deck.dealCard())

        # display cards
        display_cards(dealer_hand, "DEALER'S SHOW CARD: ")
        display_cards(player_hand, "YOUR CARDS: ")
        
        # get player hand
        player_hand = play(deck, player_hand)
        
        # get dealer hand
        while dealer_hand.points() < 17:        
            dealer_hand.addCard(deck.dealCard())
        display_cards(dealer_hand, "DEALER'S CARDS: ")

        print("YOUR POINTS:     " + str(player_hand.points()))
        print("DEALER'S POINTS: " + str(dealer_hand.points()))
        print()

        # check result of hand
        player_points = player_hand.points()
        dealer_points = dealer_hand.points()
        if player_points > 21:    
            print("Sorry. You busted. You lose.")
            money -= bet
        elif dealer_points > 21:
            print("Yay! The dealer busted. You win!")
            money += bet
        else:        
            if player_points == 21 and len(player_hand) == 2:
                if dealer_points == 21 and len(dealer_hand) == 2:
                    print("Dang, dealer has blackjack too. You push.")
                else:
                    print("Blackjack! You win!")
                    money += bet * 1.5
            elif player_points > dealer_points:    
                print("Hooray! You win!")
                money += bet
            elif player_points == dealer_points:    
                print("You push.")
            elif player_points < dealer_points:    
                print("Sorry. You lose.")
                money -= bet
            else:
                print("I am not sure what happened.")

        # display new money amount
        money = round(money, 2)
        print("Money:", lc.currency(money, grouping=True))
        print()

        again = input("Play again? (y/n): ").lower()
        print()
        if again != "y":
            break

    # get stop time
    stop_time = datetime.now()
    session.stopTime = str(stop_time)
    session.stopMoney = money
    db.add_session(session)
    display_end(start_time, stop_time)
    db.close()

def display_end(start_time, stop_time):
    elapsed_time = stop_time - start_time
    minutes = elapsed_time.seconds // 60
    seconds = elapsed_time.seconds % 60

    # calculate hours and minutes
    hours = minutes // 60
    minutes = minutes % 60

    # create time object
    time_object = time(hours, minutes, seconds)

    print("Stop time:", stop_time.strftime("%I:%M:%S %p"))
    print("Elapsed time:", time_object)    
    print("Come back soon!")
    print("Bye!")


# if started as the main module, call the main function
if __name__ == "__main__":
    main()
