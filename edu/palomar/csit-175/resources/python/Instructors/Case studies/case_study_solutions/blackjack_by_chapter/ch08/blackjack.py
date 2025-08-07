#!/usr/bin/env python3

import cards
import db

def display_title():
    print("BLACKJACK!")
    print("Blackjack payout is 3:2")
    print()

def get_starting_money():
    while True:
        money = db.read_money()
        if money == None:
            print("Could not read money from file.")
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
        print(card[0],"of", card[1])
    print()

def play(deck, player_hand):
    while True:
        choice = input("Hit or stand? (hit/stand): ")
        print()

        if choice == "hit":
            cards.add_card(player_hand, cards.deal_card(deck))
            display_cards(player_hand, "YOUR CARDS: ")
            if cards.get_points(player_hand) > 21:
                break
        elif choice == "stand":
            break
        else:
            print("Not a valid choice. Try again.")
    return player_hand

def main():
    display_title()

    # get starting money
    money = get_starting_money()
    print("Money:", money)

    # start loop
    while True:
        # make sure player has enough money for min bet
        if money < 5:
            print("You are out of money.")
            buy_more = input(
                "Would you like to buy more chips? (y/n): ").lower()
            if buy_more == "y":
                money = buy_more_chips(money)
                print("Money:", money)
                db.write_money(money)
            else:
                break
        
        # get bet amount
        bet = get_bet(money)
        print()

        deck = cards.get_deck()
        cards.shuffle(deck)

        dealer_hand = cards.get_empty_hand()
        player_hand = cards.get_empty_hand()

        # deal two cards to player and one to the dealer
        cards.add_card(player_hand, cards.deal_card(deck))
        cards.add_card(player_hand, cards.deal_card(deck))
        cards.add_card(dealer_hand, cards.deal_card(deck))

        # display cards
        display_cards(dealer_hand, "DEALER'S SHOW CARD: ")
        display_cards(player_hand, "YOUR CARDS: ")
        
        # get player hand
        player_hand = play(deck, player_hand)
        
        # get dealer hand
        while cards.get_points(dealer_hand) < 17:        
            cards.add_card(dealer_hand, cards.deal_card(deck))
        display_cards(dealer_hand, "DEALER'S CARDS: ")

        print("YOUR POINTS:     " + str(cards.get_points(player_hand)))
        print("DEALER'S POINTS: " + str(cards.get_points(dealer_hand)))
        print()

        # check result of hand
        player_points = cards.get_points(player_hand)
        dealer_points = cards.get_points(dealer_hand)
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
                    money = round(money, 2)
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
        print("Money:", money)
        print()

        # write money to file
        db.write_money(money)

        again = input("Play again? (y/n): ").lower()
        print()
        if again != "y":
            break
        
    print("Come back soon!")
    print("Bye!")
        

# if started as the main module, call the main function
if __name__ == "__main__":
    main()
