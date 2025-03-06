def main():
    print("Number Finder")
    print()
    print("Enter 'x' to exit.")

    low = 0
    high = 100

    while True:
        print()
        num = input("Enter a number between " + str(low) +
                    " and " + str(high) + ": ")
        if num == "x":
            print("Bye!")
            break
        else:
            num = int(num)
            find(num, low, high)

def find(num, low, high, count=1):
    guess = (low + high) // 2  # guess is always the mid point
    print("Guess", count, "is", guess)
    count += 1    
    if num == guess:
        if count-1 == 1:
            print("The computer found it in", count-1, "guess!")            
        else:
            print("The computer found it in", count-1, "guesses.")
        return
    elif num < guess:
        return find(num, low, guess, count)
    elif num > guess:
        return find(num, guess, high, count)

if __name__ == "__main__":
    main()
