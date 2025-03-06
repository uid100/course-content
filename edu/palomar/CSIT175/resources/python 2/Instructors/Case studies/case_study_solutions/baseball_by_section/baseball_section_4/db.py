import sqlite3
from contextlib import closing

import objects as o

conn = None

def connect():
    global conn
    if not conn:
        DB_FILE = "player_db.sqlite"
        conn = sqlite3.connect(DB_FILE)
        conn.row_factory = sqlite3.Row

def close():
    if conn:
        conn.close()

def get_players():    
    query = '''SELECT playerID, batOrder, firstName, lastName,
                      position, atBats, hits
               FROM Player ORDER BY batOrder'''
    with closing(conn.cursor()) as c:
        c.execute(query)
        results = c.fetchall()

    players = o.Lineup()
    for row in results:
        player = o.Player(row["batOrder"], row["firstName"], row["lastName"], row["position"],
                          row["atBats"], row["hits"], row["playerID"])
        players.add(player)
    return players

def get_player(playerID):
    query = '''SELECT * FROM Player WHERE playerID = ?'''
    with closing(conn.cursor()) as c:
        c.execute(query, (playerID,))
        row = c.fetchone()
        if row:
            player = o.Player(row["batOrder"], row["firstName"], row["lastName"],
                              row["position"], row["atBats"], row["hits"],
                              row["playerID"])
            return player
        else:
            return None

def add_player(player):
    sql = '''INSERT INTO Player
               (batOrder, firstName, lastName, position, atBats, hits) 
             VALUES
               (?, ?, ?, ?, ?, ?)'''
    with closing(conn.cursor()) as c:
        c.execute(sql, (player.batOrder, player.firstName, player.lastName,
                        player.position, player.atBats, player.hits))
        conn.commit()

def delete_player(player):
    sql = '''DELETE FROM Player WHERE lastName = ?'''
    with closing(conn.cursor()) as c:
        c.execute(sql, (player.lastName,))
        conn.commit()

def update_bat_order(lineup):
    for player in lineup:
        sql = '''UPDATE Player
                 SET batOrder = ?
                 WHERE playerID = ?'''
        with closing(conn.cursor()) as c:
            c.execute(sql, (player.batOrder, player.playerID))
    conn.commit()        

def update_player(player):
    sql = '''UPDATE Player
             SET batOrder = ?,
                 firstName = ?,
                 lastName = ?,
                 position = ?,
                 atBats = ?,
                 hits = ?
             WHERE playerID = ?'''
    with closing(conn.cursor()) as c:
        c.execute(sql, (player.batOrder, player.firstName, player.lastName,
                        player.position, player.atBats,
                        player.hits, player.playerID))
        conn.commit()

def main():
    connect()
    players = get_players()
    for player in players:
        print(player.batOrder, player.firstName, player.lastName,
              player.position, player.atBats, player.hits, player.getBattingAvg())


if __name__ == "__main__":
    main()
