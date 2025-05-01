#!/usr/bin/env python3
"""
This is a simple GUI application that calculates the future value of an investment
based on user input for the principal amount, interest rate, and number of years.
It uses the Tkinter library for the GUI and includes input validation to ensure
the user enters valid numeric values.
"""

import tkinter as tk
from tkinter import ttk


def calculate_future_value():
    try:
        monthly_deposit = float(monthly_deposit_entry.get())
        annual_yield = float(annual_yield_entry.get()) / 100
        term_months = int(term_years_entry.get()) * 12

        monthly_rate = annual_yield / 12
        future_value = 0
        total_investment = 0
        interest_earned = 0
        intermediate_data = []

        for month in range(1, term_months + 1):
            future_value = (future_value + monthly_deposit) * \
                (1 + monthly_rate)
            total_investment += monthly_deposit
            interest_earned = future_value - total_investment
            intermediate_data.append(
                (month, f"${future_value:.2f}", f"${total_investment:.2f}", f"${interest_earned:.2f}"))

        final_value_label.config(text=f"${future_value:.2f}")
        total_investment_label.config(text=f"${total_investment:.2f}")
        interest_earned_label.config(text=f"${interest_earned:.2f}")

        # Update the table
        # Clear previous data
        for item in tree.get_children():
            tree.delete(item)
        # Insert new data
        for row in intermediate_data:
            tree.insert("", tk.END, values=row)

    except ValueError:
        final_value_label.config(text="Invalid Input")
        total_investment_label.config(text="")
        interest_earned_label.config(text="")
        # Clear the table
        for item in tree.get_children():
            tree.delete(item)


# --- GUI Setup ---
root = tk.Tk()
root.title("Future Investment Calculator")

# Input Fields
input_frame = ttk.LabelFrame(root, text="Investment Details")
input_frame.pack(padx=10, pady=10, fill="x")

ttk.Label(input_frame, text="Monthly Deposit:").grid(
    row=0, column=0, padx=5, pady=5, sticky="w")
monthly_deposit_entry = ttk.Entry(input_frame)
monthly_deposit_entry.grid(row=0, column=1, padx=5, pady=5, sticky="ew")

ttk.Label(input_frame, text="Annual Yield (%):").grid(
    row=1, column=0, padx=5, pady=5, sticky="w")
annual_yield_entry = ttk.Entry(input_frame)
annual_yield_entry.grid(row=1, column=1, padx=5, pady=5, sticky="ew")

ttk.Label(input_frame, text="Term (Years):").grid(
    row=2, column=0, padx=5, pady=5, sticky="w")
term_years_entry = ttk.Entry(input_frame)
term_years_entry.grid(row=2, column=1, padx=5, pady=5, sticky="ew")

calculate_button = ttk.Button(
    root, text="Calculate", command=calculate_future_value)
calculate_button.pack(pady=10)

# Output Labels
output_frame = ttk.LabelFrame(root, text="Results")
output_frame.pack(padx=10, pady=10, fill="x")

ttk.Label(output_frame, text="Final Value:").grid(
    row=0, column=0, padx=5, pady=5, sticky="w")
final_value_label = ttk.Label(output_frame, text="")
final_value_label.grid(row=0, column=1, padx=5, pady=5, sticky="ew")

ttk.Label(output_frame, text="Total Investment:").grid(
    row=1, column=0, padx=5, pady=5, sticky="w")
total_investment_label = ttk.Label(output_frame, text="")
total_investment_label.grid(row=1, column=1, padx=5, pady=5, sticky="ew")

ttk.Label(output_frame, text="Total Interest Earned:").grid(
    row=2, column=0, padx=5, pady=5, sticky="w")
interest_earned_label = ttk.Label(output_frame, text="")
interest_earned_label.grid(row=2, column=1, padx=5, pady=5, sticky="ew")

# Intermediate Values Table
table_frame = ttk.LabelFrame(root, text="Intermediate Values")
table_frame.pack(padx=10, pady=10, fill="both", expand=True)

tree = ttk.Treeview(table_frame, columns=(
    "Month", "End Value", "Total Deposit", "Interest"), show="headings")
tree.heading("Month", text="Month")
tree.heading("End Value", text="End Value")
tree.heading("Total Deposit", text="Total Deposit")
tree.heading("Interest", text="Interest")

# Make columns stretchable
table_frame.grid_columnconfigure(0, weight=1)
table_frame.grid_rowconfigure(0, weight=1)
tree.pack(fill="both", expand=True)

# Scrollbar for the table (in case there are many months)
scrollbar_y = ttk.Scrollbar(table_frame, orient="vertical", command=tree.yview)
tree.configure(yscrollcommand=scrollbar_y.set)
scrollbar_y.pack(side="right", fill="y")

root.mainloop()
