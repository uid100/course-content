#!/usr/bin/env python3

## pip install -r requirements.txt

import requests
import pandas as pd
import matplotlib.pyplot as plt

# API endpoint for the dataset
# Filter the data for a specific country
# country = "South Africa"
country_dim = "ZAF"
country_dim = "MOZ"
# country_dim = "GLOBAL"
API_URL = "https://ghoapi.azureedge.net/api/HIV_0000000001"
# API_URL = f"https://ghoapi.azureedge.net/api/HIV_0000000001?$filter=SpatialDim%20eq%20%27{country_dim}%27"

# Fetch the data from the GHO API
response = requests.get(API_URL)

# Verify successful response
if response.status_code == 200:
    data = response.json()
    # Parse JSON data
    # Extract key fields: country, year, and value
    records = [{
        # "Country": item["Dim"]["COUNTRY"],
        # "Year": item["Dim"]["YEAR"],
        # "Value": item["Value"]
        "Country": item["SpatialDim"],
        "Year": item["TimeDimensionValue"],
        "Value": item["NumericValue"]
    } for item in data["value"] if "Value" in item]

    # Convert data into a pandas DataFrame for analysis
    df = pd.DataFrame(records)
    df["Year"] = pd.to_numeric(df["Year"])

    # Ensure numeric format for years
    df["Value"] = pd.to_numeric(df["Value"])

    # Ensure numeric format for values

    # Display the first few rows of the dataset
    print("Sample of the data:")
    print(df.head())

df_country = df[df["Country"] == country_dim]
# df_country = df[df["Country"] != 'None']
# df_country = df[(df["Country"] != 'GLOBAL')
#                 & (df["Country"] != 'AFR')
#                 & (df["Country"] != 'AMR')
#                 & (df["Country"] != 'EMR')
#                 & (df["Country"] != 'EUR')
#                 & (df["Country"] != 'SEAR')
#                 & (df["Country"] != 'WPR')]
# & (df["Country"] != 'ZAF')
# & (df["Value"] > 2e6)]
# & (df["Value"] > 3e6)]
# df_country = df[df["Value"] < 1e6]
# df_country = df[(df["Year"] < 2000) & (df["Value"] > 3e6)]

# # Display the first few rows of the filtered dataset
# print("Sample of the filtered data:")
print(df_country.head())

# Plotting the data
plt.figure(figsize=(10, 6))
# plt.plot(df_country["Year"], df_country["Value"], marker='o', label=country_dim)
# plt.plot(df_country["Year"], df_country["Value"], marker='o', label=country_dim, linestyle='None', color='r')
plt.plot(df_country["Year"], df_country["Value"],
         marker='o', linestyle='None', color='r')
plt.title(f"Number of People Living with HIV in {
          country_dim} (Trend Over Time)")
plt.xlabel("Year")
plt.ylabel("Number of PLHIV")
plt.legend()
plt.grid(True)
plt.show()
