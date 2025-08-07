#!/usr/bin/env python3

# Palomar College CSIT-175
# Your Name Here
# find the errors in the sample code.

import random

def add( a, b ):
    return a + b

def multiply( a, b ):
    return a * b

def square( a ):
    return a * a

def main():
    x = 10
    y = 0
    z = x / y
    print("Value of z = " + z)

    print(f"{w} ---> {x} ---> {y}")
    int_value = int("abc")

    print( square(random.getrandom(10) ))
    print(add(1))
    
    x = square( 2, 3 )
    print( x )

    None = 10

    print("The value of x is: %d" % "abc")

if __name__=="__main__":
    main()
