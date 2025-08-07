#!/usr/bin/env python3

# YOUR NAME HERE
# Palomar College
# Reading data from an API

# be careful with capitalization here.
from flask import Flask, render_template
import requests
import datetime

app = Flask(__name__)


def get_location(zip_code):
    url = f'http://api.zippopotam.us/us/{zip_code}'
    response = requests.get(url)
    if response.status_code == 200:
        data = response.json()
        city = data['places'][0]['place name']
        state = data['places'][0]['state']
        lat = data['places'][0]['latitude']
        lon = data['places'][0]['longitude']
        return city, state, lat, lon
    else:
        return None, None, None, None


def get_weather_forecast(lat, lon):
    url = f'https://api.weather.gov/points/{str(lat)},{str(lon)}'
    response = requests.get(url)
    if response.status_code == 200:
        data = response.json()
        forecast_url = data['properties']['forecast']
        forecast_response = requests.get(forecast_url)
        if forecast_response.status_code == 200:
            forecast_data = forecast_response.json()
            current = forecast_data['properties']['periods'][0]['name']
            icon = forecast_data['properties']['periods'][0]['icon']
            forecast = forecast_data['properties']['periods'][0]['detailedForecast']
            return current, icon, forecast
    return None, None, "Weather forecast not available."


@app.route('/<zip_code>')
def get_weather(zip_code):
    city, state, lat, lon = get_location(zip_code)
    if city and state:
        time_of_day, weather_icon, forecast = get_weather_forecast(lat, lon)
        time_string = datetime.datetime.now()
        return render_template('weather.html', city=city, state=state, time_of_day=time_of_day,
                               time_string=time_string, icon=weather_icon, forecast=forecast)
    else:
        return "City and state information not found."


if __name__ == '__main__':
    app.run(debug=True)
