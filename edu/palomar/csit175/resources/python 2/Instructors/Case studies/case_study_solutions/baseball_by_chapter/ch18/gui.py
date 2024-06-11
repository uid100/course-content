#!/usr/bin/env python3

import tkinter as tk
from tkinter import ttk

import db
from objects import Player

class PlayerFrame(ttk.Frame):
    def __init__(self, parent):
        ttk.Frame.__init__(self, parent, padding="10 10 10 10")
        self.parent = parent

        # Define string variables for text entry fields
        self.playerID = tk.StringVar()
        self.firstName = tk.StringVar()
        self.lastName = tk.StringVar()
        self.position = tk.StringVar()
        self.atBats = tk.StringVar()
        self.hits = tk.StringVar()
        self.battingAvg = tk.StringVar()

        # Read Player object from db and set text fields
        db.connect()
        self.player = db.get_player(1)
        if self.player == None:
            self.clear()
        else:
            self.setPlayer(self.player)

        # Inititalize components
        self.initComponents()

    def initComponents(self):
        self.pack()
        
        # Display the grid of labels and text entry fields
        ttk.Label(self, text="Player ID:").grid(
            column=0, row=0, sticky=tk.E)
        ttk.Entry(self, width=25, textvariable=self.playerID).grid(
            column=1, row=0)
        ttk.Button(self, text="Get Player", command=self.getPlayer).grid(
            column=2, row=0)

        ttk.Label(self, text="First name:").grid(
            column=0, row=2, sticky=tk.E)
        ttk.Entry(self, width=25, textvariable=self.firstName).grid(
            column=1, row=2)

        ttk.Label(self, text="Last name:").grid(
            column=0, row=3, sticky=tk.E)
        ttk.Entry(self, width=25, textvariable=self.lastName).grid(
            column=1, row=3)

        ttk.Label(self, text="Position:").grid(
            column=0, row=4, sticky=tk.E)
        ttk.Entry(self, width=25, textvariable=self.position).grid(
            column=1, row=4)

        ttk.Label(self, text="At bats:").grid(
            column=0, row=5, sticky=tk.E)
        ttk.Entry(self, width=25, textvariable=self.atBats).grid(
            column=1, row=5)

        ttk.Label(self, text="Hits:").grid(
            column=0, row=6, sticky=tk.E)
        ttk.Entry(self, width=25, textvariable=self.hits).grid(
            column=1, row=6)

        ttk.Label(self, text="Batting Avg:").grid(
            column=0, row=6, sticky=tk.E)
        ttk.Entry(self, width=25, textvariable=self.battingAvg,
                  state="readonly").grid(
            column=1, row=6)

        self.makeButtons()

        for child in self.winfo_children():
            child.grid_configure(padx=5, pady=3)

    def makeButtons(self):
        # Create a frame to store the two buttons
        buttonFrame = ttk.Frame(self)

        # Add the button frame to the bottom row of the main grid
        buttonFrame.grid(column=0, row=7, columnspan=2, sticky=tk.E)

        # Add two buttons to the button frame
        ttk.Button(buttonFrame, text="Save Changes", command=self.save) \
            .grid(column=0, row=0, padx=5)
        ttk.Button(buttonFrame, text="Cancel", command=self.cancel) \
            .grid(column=1, row=0)

    def setPlayer(self, player):
        self.playerID.set(str(self.player.playerID))
        self.firstName.set(self.player.firstName)
        self.lastName.set(self.player.lastName)
        self.position.set(self.player.position)
        self.atBats.set(str(self.player.atBats))
        self.hits.set(str(self.player.hits))        
        self.battingAvg.set("{:.3f}".format(self.player.getBattingAvg()))

    def getPlayer(self):
        id = 0
        try:
            id = int(self.playerID.get())
        except ValueError:
            self.clear()
            
        self.player = db.get_player(id)
        if self.player == None:
            self.clear()
        else:
            self.setPlayer(self.player)

    def save(self):
        self.player.playerID = int(self.playerID.get())
        self.player.firstName = self.firstName.get()
        self.player.lastName = self.lastName.get()
        self.player.position = self.position.get()
        self.player.atBats = self.atBats.get()
        self.player.hits = self.hits.get()
        db.update_player(self.player)
        self.clear()

    def clear(self):
        self.playerID.set("")
        self.firstName.set("")
        self.lastName.set("")
        self.position.set("")
        self.atBats.set("")
        self.hits.set("")
        
    def cancel(self):
        self.setPlayer(self.player)
        
if __name__ == "__main__":
    root = tk.Tk()
    root.title("Player")
    PlayerFrame(root)
    root.mainloop()
