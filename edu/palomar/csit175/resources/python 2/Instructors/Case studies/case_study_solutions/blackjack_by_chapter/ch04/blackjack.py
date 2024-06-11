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

def main():
    display_title()

    # get starting money
    money = float(input("Starting money: "))
    print()

    # start loop
    while True:
        # get bet amount
        bet = input("Bet amount: ")
        if bet == "x":
            break
        bet = float(bet)

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
