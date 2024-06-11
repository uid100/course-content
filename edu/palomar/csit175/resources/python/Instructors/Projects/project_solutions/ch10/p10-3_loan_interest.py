#!/usr/bin/env python3

from decimal import Decimal
import locale as lc

def main():
    print("Interest Calculator")
    print()
    
    choice = "y"
    while choice.lower() == "y":
        # get loan amount
        loan_amount = Decimal(0)
        input_str = input("Enter loan amount:   ").strip()
        if "," in input_str:
            input_str = input_str.replace(",", "")
        if input_str.startswith("$"):
            input_str = input_str[1:]
        if input_str.endswith("K") or input_str.endswith("k"):
            input_str = input_str[0:-1]
            k_multiplier = Decimal(1000)
        else:
            k_multiplier = Decimal(1)

        loan_amount = Decimal(input_str) * k_multiplier
            

        # get interest rate
        input_str = input("Enter interest rate: ").strip()
        if "%" in input_str:
            input_str = input_str.replace("%", "")
        interest_rate = Decimal(input_str)

        print()

        # quantize the entries
        loan_amount = loan_amount.quantize(Decimal("1.12"))
        interest_rate = interest_rate.quantize(Decimal("1.123"))

        # calculate and quantize the interest amount
        interest_amount = loan_amount * (interest_rate / 100)
        interest_amount = interest_amount.quantize(Decimal("1.12"))        

        # format and display the results
        result = lc.setlocale(lc.LC_ALL, "")
        if result == "C" or result.startswith("C/"):
            lc.setlocale(lc.LC_ALL, "en_US")
        line = "{:16} {:>16}"
        print(line.format("Loan amount:",
            lc.currency(loan_amount, grouping=True)))
        print(line.format("Interest rate:",
            str(interest_rate) + "%"))
        print(line.format("Interest amount:",
            lc.currency(interest_amount, grouping=True)), "\n")

        choice = input("Continue? (y/n): ")
        print()

    print("Bye!")

if __name__ == "__main__":
    main()
