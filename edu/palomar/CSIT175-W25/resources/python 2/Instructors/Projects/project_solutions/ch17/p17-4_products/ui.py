#!/usr/bin/env/python3

import db
from objects import Product

def display_title():
    print("Product Manager")
    print()    

def display_categories():
    print("CATEGORIES")
    categories = db.get_categories()
    display_str = ""
    for category in categories:
        display_str += category.name + " | "
    display_str = display_str[:-3]
    print(display_str)
    print()

def display_menu():
    print("COMMAND MENU")
    print("view   - View products by category")
    print("update - Update product price")
    print("exit   - Exit program")
    print()    

def display_products_by_category():
    category_name = input("Category name: ").strip().title()
    products = db.get_products_by_category(category_name)
    line_format = "{:10s} {:40s} {:>10s}"
    print(line_format.format("Code", "Name", "Price"))
    print("-" * 62)
    for product in products:
        print(line_format.format(product.code, product.name,
                                 "{:>8,.2f}".format(product.price)))
    print()    

def update_product():
    code = input("Product code: ").lower()
    price = float(input("New product price: "))
    db.update_product(code, price)
    print("Product updated.\n")
        
def main():
    db.connect()
    display_title()
    display_categories()
    display_menu()
    while True:        
        command = input("Command: ")
        if command == "view":
            display_products_by_category()
        elif command == "update":
            update_product()
        elif command == "exit":
            break
        else:
            print("Not a valid command. Please try again.\n")
            display_menu()
    db.close()
    print("Bye!")

if __name__ == "__main__":
    main()
