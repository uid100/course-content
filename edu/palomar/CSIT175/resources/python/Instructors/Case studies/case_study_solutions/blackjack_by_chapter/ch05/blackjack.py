#!/usr/bin/env python3

import random

def display_title():
    print("BLACKJACK!")
    print("Blackjack payout is 3:2")
    print("Enter 'x' for bet to exit")
    print()

def play_hand():
    value = random.randint(1, 100)
    if value > 95:
        return "blackjack"
    elif value > 58:
        return "win"
    elif value > 49:
        return "push"
    else:
        return "lose"

def get_starting_money():
    while True:
        money = float(input("Starting money: "))
        if money > 0 and money <= 10000:
            return money
        else:
            print("Invalid amount. Must be from 0 to 10,000.")    

def get_bet(money):
    while True:
        bet = input("Bet amount: ")
        if bet == "x":
            return "x"

        bet = float(bet)
        if bet < 5:
            print("The minimum bet is 5.")
        elif bet > 1000:
            print("The maximum bet is 1,000.")
        elif bet > money:
            print("You don't have enough money to make that bet.")
        else:
            return bet

def main():
    display_title()

    # get starting money
    money = get_starting_money()
    print()

    # start loop
    while True:
        # get bet amount
        bet = get_bet(money)
        if bet == "x":
            break

        # get result of hand
        result = play_hand()
        if result.lower() == "blackjack":
            print("You got a blackjack!")
            money += bet * 1.5
            money = round(money, 2)
        elif result.lower() == "win":
            print("You won.")
            money += bet
        elif result.lower() == "push":
            print("You pushed.")
        elif result.lower() == "lose":
            print("You lost.")
            money -= bet

        # display new money amount
        print("Money:", money)
        print()

    print("Bye!")
        

# if started as the main module, call the main function
if __name__ == "__main__":
    main()
