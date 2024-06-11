#!/usr/bin/env python3

# YOUR NAME HERE
# Palomar College CSIT 175

# StoreInfo - Python Dictionary Exercise
# import store information based on user selection

import importlib  # for import_module()

# map the list of stores to their info (.py dictionary) files
STORE_INFO_LIST = {
    "tacos": "Taqueria",  # if user selects 'tacos', find file: Taqueria.py
    "burgers": "BurgerWorld",
    "plants": "Nursery",
    "pets": "Animals",
    "tires": "Tires"
}


def select_store():
    print()
    for store in list(STORE_INFO_LIST):
        print(f'\t', store)
    selection = input("\nchoose a store from the list: ").lower()
    if selection in STORE_INFO_LIST:
        return STORE_INFO_LIST[selection]
    return None


def get_store_info():
    try:
        module = select_store()
        if module is None:
            print("\t no store found.")
            exit()
        return importlib.import_module(module)
    except ImportError:
        print("\t error opening store information file.")
    except Exception:
        print("\tCan't import specified file.")


if __name__ == "__main__":
    print("Did you mean to start this file? Try opening the StoreFront.")

else:
    store_info = get_store_info()
