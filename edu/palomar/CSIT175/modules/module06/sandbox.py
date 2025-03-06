#!/usr/bin/env python3

diamonds = '''
            People say she's crazy
            She got diamonds on the soles of her shoes
            Well that's one way to lose these walking blues
            Diamonds on the soles of her shoes
'''

# 1.
print("diamonds:\n\t", diamonds, '\n')
print(f"{len(diamonds)=}", '\n')

# 2.
diamonds = diamonds.split()
print("diamonds:\n\t", diamonds, '\n')
print(f"{len(diamonds)=}", '\n')

# 3.
diamonds = diamonds[diamonds.index("diamonds")]
print("diamonds:\n\t", diamonds, '\n')
print(f"{len(diamonds)=}", '\n')

# 4.
diamonds = diamonds.split()
print("diamonds:\n\t", diamonds, '\n')
print(f"{len(diamonds)=}", '\n')

# 5.
diamonds = list("diamonds")
print("diamonds:\n\t", diamonds, '\n')
print(f"{len(diamonds)=}", '\n')
