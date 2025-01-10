#!/usr/bin/env python3

import sales_tax as st

def get_items_total():
    print("ENTER ITEMS (ENTER 0 TO END)")
    total = 0
    while True:
        item_cost = float(input("Cost of item: "))
        if item_cost == 0:
            break
        total += item_cost
    return round(total,2)

def main():
    print("Sales Tax Calculator\n")
    while True:
        total = get_items_total()
        print("Total:          ", total)
        print("Sales tax:      ", st.get_tax(total))
        print("Total after tax:", st.get_total_after_tax(total))
        print()
        again = input("Again? (y/n): ")
        print()
        if again.lower() != "y":
            break
    print("Thanks, bye!")    
    
if __name__ == "__main__":
    main()
