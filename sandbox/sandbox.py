#!/usr/bin/env python3

# get the current time and display a greeting message for morning, afternoon, or evening.
import datetime


def get_time():
    current_time = datetime.datetime.now()
    return current_time.hour


def get_greeting(hour):
    if hour < 12:
        return "Good morning!"
    elif hour < 18:
        return "Good afternoon!"
    else:
        return "Good evening!"


hour = get_time()
print(get_greeting(hour))
