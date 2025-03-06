#!/usr/bin/env python3

# a file in the current directory
FILENAME = "monthly_sales.txt"

def write_sales(sales):
    with open(FILENAME, "w") as file:
        for month, amount in sales.items():
            file.write(month + "\t" + str(amount) + "\n")

def read_sales():
    sales = {}
    with open(FILENAME, "r") as file:
        for line in file:
            line = line.replace("\n", "")
            row = line.split("\t")
            sales[row[0]] = int(row[1])
    return sales

def view_month(sales):
    month = input("Three-letter Month: ")
    month = month.title()
    if month in sales.keys():
        monthly_sales = sales[month]
        print("Sales amount for {:s} is {:,.2f}.".format(month, monthly_sales))
        print()
    else:
        print("Invalid three-letter month.")
        print()
    
def edit_month(sales):
    month = input("Three-letter Month: ")
    month = month.title()
    if month in sales.keys():
        amount = int(input("Sales Amount: "))
        sales[month] = amount
        write_sales(sales)
        print("Sales amount for {:s} is {:,.2f}.".format(month, amount))
        print()
    else:
        print("Invalid three-letter month.")
        print()

def view_year(sales):
    total = 0
    for month, amount in sales.items():
        total += int(amount)

    # get count
    count = len(sales)
    
    # calculate average
    average = total / count
    average = round(average, 2)

    # format and display the result
    print("Yearly total:    {:12,.2f}".format(total))
    print("Monthly average: {:12,.2f}".format(average))
    print()

def display_menu():
    print("COMMAND MENU")
    print("view   - View sales for specified month")
    print("edit   - Edit sales for specified month")
    print("totals - View sales summary for year")
    print("exit   - Exit program")
    print()

def main():
    print("Monthly Sales program")
    print()
    
    sales = read_sales()
    display_menu()    
    while True:
        command = input("Command: ")
        if command == "view":
            view_month(sales)
        elif command == "edit":
            edit_month(sales)
        elif command == "totals":
            view_year(sales)
        elif command == "exit":
            break
        else:
            print("Not a valid command. Please try again.\n")
    print("Bye!")

if __name__ == "__main__":
    main()
