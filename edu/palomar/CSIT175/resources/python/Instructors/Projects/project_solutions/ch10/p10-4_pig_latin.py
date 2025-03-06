#!/usr/bin/env python3

def to_pig_latin(word):
    ch = word[0]
    if (ch == 'a' or
        ch == 'e' or
        ch == 'i' or
        ch == 'o' or
        ch == 'u'):
        word += "way"
    else:
        if ch == 'y':
            word = word[1:]
            word += ch
            ch = word[0]
        while (ch != 'a' and
               ch != 'e' and
               ch != 'i' and
               ch != 'o' and
               ch != 'u' and
               ch != 'y'):
            word = word[1:]
            word += ch
            ch = word[0]
        word += "ay"
    return word

def main():
    print("Pig Latin Translator")
    print()

    while True:
        # get input from the user
        line = input("Enter text: ").strip()

        # remove punctuation from English
        line = line.replace(".", "")
        line = line.replace("!", "")
        line = line.replace("?", "")
        line = line.lower()

        # translate to Pig Latin
        if line == "":
            System.out.println("You didn't enter any text.")
        else:
            words1 = line.split(" ")
            words2 = []
            for word in words1:
                words2.append(to_pig_latin(word))
            pig_latin = " ".join(words2)

        # display results        
        print("English:   ", line)
        print("Pig Latin: ", pig_latin)
        print()

        # Continue?
        choice = input("Continue? (y/n): ")
        print()
        if choice != "y":
            print("Bye!")
            break        


if __name__ == "__main__":
    main()
