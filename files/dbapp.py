#!/usr/bin/env python3
# -*- coding: utf-8 -*-

# Dan Sullivan - dsullivan@sdccd.edu
# San Diego Mesa College - CISC 401
# Python app for database connection demonstration

import tkinter as tk
from tkinter import messagebox
import pyodbc

DATABASE_NAME = 'scheduledb'


def is_windows():
    import platform
    return platform.system() == 'Windows'


def sql_server_driver():
    driver_name = ''
    driver_names = [
        x for x in pyodbc.drivers() if x.endswith('SQL Server')]
    if driver_names:
        driver_name = driver_names[-1]  # use the first driver found
    else:
        print("No pyodbc driver found for SQL Server. Exiting.")
        return None
    return driver_name


def connect_to_db():
    try:
        if is_windows():
            conn = pyodbc.connect(
                f'DRIVER={sql_server_driver()};'
                'SERVER=localhost;'
                'Encrypt=no;'
                'TRUSTED_CONNECTION=yes;'
            )
        else:
            conn = pyodbc.connect(
                f'DRIVER={sql_server_driver()};'
                'SERVER=localhost;'
                'Encrypt=no;'
                'UID=sa;'  # Replace with your SQL Server username
                'PWD=reallyStrongPwd123'   # Replace with your SQL Server password
            )
        return conn
    except pyodbc.Error as e:
        messagebox.showerror(
            "Database Error", "Could not connect to the database.")
        return None


class dbApp:
    def __init__(self, gui):
        # Connect to the database server
        self.conn = connect_to_db()
        if not self.conn:
            gui.destroy()
            return

        print("Connected to the database driver.")
        self.cursor = self.conn.cursor()

        # Connect to the user database
        try:
            self.cursor.execute(f"USE {DATABASE_NAME};")
            print(f"Connected to {DATABASE_NAME} database.")
        except pyodbc.Error as e:
            print("Database error:", e)
            messagebox.showerror(
                "Database Error", f"Could not connect to {DATABASE_NAME}. {e}")
            gui.destroy()
            return

        self.gui = gui
        self.login_page()

    def login_page(self):
        # Create login page
        self.login_frame = tk.Frame(gui)
        gui.title("Login")
        self.login_frame.pack(pady=20)

        tk.Label(self.login_frame, text="First Name:").grid(
            row=0, column=0, padx=5, pady=5)
        self.first_name_entry = tk.Entry(self.login_frame)
        self.first_name_entry.grid(row=0, column=1, padx=5, pady=5)

        tk.Label(self.login_frame, text="Last Name:").grid(
            row=1, column=0, padx=5, pady=5)
        self.last_name_entry = tk.Entry(self.login_frame)
        self.last_name_entry.grid(row=1, column=1, padx=5, pady=5)

        tk.Label(self.login_frame, text="ID Number:").grid(
            row=2, column=0, padx=5, pady=5)
        self.id_entry = tk.Entry(self.login_frame)
        self.id_entry.grid(row=2, column=1, padx=5, pady=5)

        self.login_button = tk.Button(
            self.login_frame, text="Login", command=self.login)
        self.login_button.grid(row=3, columnspan=2, pady=10)

        self.exit_button = tk.Button(
            self.login_frame, text="Exit", command=self.exit)
        self.exit_button.grid(row=4, columnspan=2, pady=10)

        self.results_frame = tk.Frame(gui)

    def login(self):
        first_name = self.first_name_entry.get()
        last_name = self.last_name_entry.get()
        try:
            id_number = int(self.id_entry.get())
        except ValueError:
            messagebox.showerror(
                "Invalid ID", "ID number must be a valid integer.")
            return

        # Check if the user exists in the database
        self.cursor.execute(
            "SELECT * FROM dbo.Staff "
            + "WHERE first_name = ? AND last_name = ? AND staff_id = ?",
            (first_name, last_name, id_number))
        user = self.cursor.fetchone()

        if user:
            self.results_page(user)
        else:
            messagebox.showerror(
                "Login Failed", "No user found with the provided details.")

    def results_page(self, user):
        # Clear login frame
        self.login_frame.pack_forget()

        # Show results frame
        self.results_frame.pack(pady=20)

        # Display user information
        tk.Label(self.results_frame, text="Welcome, {} {}!".format(
            user[1], user[2])).pack(pady=5)
        # tk.Label(self.results_frame, text="Your work schedule:").pack(pady=5)

        # Query the database for the user's schedule
        self.cursor.execute(
            """
            SELECT 
                DATENAME(weekday, shift_date),
                shift_date,
                start_time,
                end_time,
                department_name
            FROM 
                dbo.Schedule
                JOIN dbo.Shift 
                ON dbo.Schedule.shift_id = dbo.Shift.shift_id
                JOIN dbo.Department
                ON dbo.Schedule.department_id = dbo.Department.department_id
            WHERE
                staff_id = ?
            """, (user[0],))
        schedule = self.cursor.fetchall()
        if not schedule:
            tk.Label(self.results_frame,
                     text="No schedule found for this user.").pack()
            return
        else:
            print(f"Schedule: {schedule}")

            # Display the user's schedule
            for day, date, start, end, department in schedule:
                tk.Label(self.results_frame,
                         text=f"{day}, {date} - {start} to {end} in {department}").pack()

        self.logout_button = tk.Button(
            self.results_frame, text="Logout", command=self.logout)
        self.logout_button.pack(pady=10)

    def logout(self):
        # Clear results frame
        self.results_frame.pack_forget()

        # Show login frame again
        self.login_frame.pack(pady=20)

        # Clear entries
        self.first_name_entry.delete(0, tk.END)
        self.last_name_entry.delete(0, tk.END)
        self.id_entry.delete(0, tk.END)
        self.exit()

    def exit(self):
        self.conn.close()
        self.gui.destroy()


if __name__ == "__main__":
    gui = tk.Tk()
    dbApp(gui)
    gui.mainloop()
