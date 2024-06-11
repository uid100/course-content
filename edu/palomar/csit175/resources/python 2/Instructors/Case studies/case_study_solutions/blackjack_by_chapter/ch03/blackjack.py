#!/usr/bin/env python3

print("BLACKJACK!")
print("Blackjack payout is 3:2")
print("Enter 'x' for bet to exit")
print()

# get starting money
money = float(input("Starting money:   "))
print()

# start loop
while True:
    # get bet amount
    bet = input("Bet amount: ")
    if bet == "x":
        break
    bet = float(bet)

    # get result of hand
    result = input("Blackjack, win, push, or lose? (b/w/p/l): ")
    if result.lower() == "b":
        money += bet * 1.5
        money = round(money, 2)
    elif result.lower() == "w":
        money += bet
    elif result.lower() == "l":
        money -= bet

    # display new money amount
    print("Money:", money)   
    print()

print("Bye!")
