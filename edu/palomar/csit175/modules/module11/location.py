#!/usr/bin/env python3

# YOUR NAME HERE
# Palomar College
# location:  get city and state from zip code
# Reading data from an API


# be careful with capitalization here.
from flask import Flask, request
import requests

app = Flask(__name__)


def get_city_state(zip_code):
    url = f'http://api.zippopotam.us/us/{zip_code}'
    response = requests.get(url)
    if response.status_code == 200:
        data = response.json()
        city = data['places'][0]['place name']
        state = data['places'][0]['state']
        return city, state
    else:
        return None, None


@app.route('/<zip_code>')
def get_city_state_route(zip_code):
    city, state = get_city_state(zip_code)
    if city and state:
        return f"City: {city}, State: {state}"
    else:
        return "City and state information not found."


if __name__ == '__main__':
    app.run(debug=True)
