#!/usr/bin/env python3
"""
This is a simple web application that calculates the future value of an investment
based on user input for the principal amount, interest rate, and number of years.
It uses the Flask framework for the web interface and includes input validation to ensure
the user enters valid numeric values.
"""
from flask import Flask, render_template, request

app = Flask(__name__)


def calculate_future_value(monthly_deposit, annual_yield, term_years):
    """
    Calculates the future value of an investment, total investment,
    interest earned, and generates intermediate data for each month.

    Args:
        monthly_deposit (float): The amount deposited each month.
        annual_yield (float): The annual percentage yield (as a decimal).
        term_years (int): The number of years of the investment.

    Returns:
        tuple: (final_value, total_investment, interest_earned, intermediate_data)
               Returns (None, None, None, []) on error.
    """
    try:
        monthly_deposit = float(monthly_deposit)
        annual_yield = float(annual_yield) / 100
        term_months = int(term_years) * 12
    except ValueError:
        return None, None, None, []  # Return None values to indicate an error

    if monthly_deposit < 0 or annual_yield < 0 or term_months <= 0:
        return None, None, None, []  # Return None for invalid input

    monthly_rate = annual_yield / 12
    future_value = 0
    total_investment = 0
    interest_earned = 0
    intermediate_data = []

    for month in range(1, term_months + 1):
        future_value = (future_value + monthly_deposit) * (1 + monthly_rate)
        total_investment += monthly_deposit
        interest_earned = future_value - total_investment
        intermediate_data.append({
            "month": month,
            "end_value": f"${future_value:.2f}",
            "total_deposit": f"${total_investment:.2f}",
            "interest": f"${interest_earned:.2f}"
        })

    return future_value, total_investment, interest_earned, intermediate_data


@app.route('/', methods=['GET', 'POST'])
def index():
    """
    Handles the main page of the web application.
    Calculates the future value on POST request and displays results.

    Returns:
        str: The rendered HTML template.
    """
    if request.method == 'POST':
        monthly_deposit = request.form.get('monthly_deposit')
        annual_yield = request.form.get('annual_yield')
        term_years = request.form.get('term_years')

        final_value, total_investment, interest_earned, intermediate_data = calculate_future_value(
            monthly_deposit, annual_yield, term_years
        )

        if final_value is None:
            error_message = "Invalid input. Please enter positive numbers."
            return render_template('index.html', error_message=error_message)
        else:
            return render_template(
                'index.html',
                final_value=f"${final_value:.2f}",
                total_investment=f"${total_investment:.2f}",
                interest_earned=f"${interest_earned:.2f}",
                intermediate_data=intermediate_data,
                monthly_deposit=monthly_deposit,  # Pass input back to the template
                annual_yield=annual_yield,
                term_years=term_years
            )

    # Initial GET request
    return render_template('index.html', error_message=None)


if __name__ == "__main__":
    app.run(debug=True)  # Set debug to true for development
