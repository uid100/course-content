#!/usr/bin/env python3

print("BLACKJACK!")
print("Blackjack payout is 3:2")
print()

# get starting money and bet
money = float(input("Starting money:   "))
bet = float(input("Bet amount:       "))
print()

# calculate ending money amounts
blackjack = money + bet * 1.5
blackjack = round(blackjack, 2)
win = money + bet
lose = money - bet

# print ending money amounts
print("ENDING MONEY FOR A...")
print("Blackjack:       ", blackjack)
print("Win:             ", win)
print("Push:            ", money)
print("Lose:            ", lose)
print()
print("Bye!")
