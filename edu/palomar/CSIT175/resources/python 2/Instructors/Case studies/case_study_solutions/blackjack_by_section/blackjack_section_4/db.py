import sqlite3
from contextlib import closing

from objects import Session

conn = None

def connect():
    global conn
    if not conn:
        DB_FILE = "session_db.sqlite"
        conn = sqlite3.connect(DB_FILE)
        conn.row_factory = sqlite3.Row

def close():
    if conn:
        conn.close()

def get_last_session():
    query = '''SELECT * FROM Session ORDER BY sessionID DESC'''
    with closing(conn.cursor()) as c:
        c.execute(query)
        row = c.fetchone()
        if row:
            session = Session(row["sessionID"],
                              row["startTime"], row["startMoney"],
                              row["addedMoney"],
                              row["stopTime"], row["stopMoney"])
            return session
        else:
            return None

def add_session(session):
    sql = '''INSERT INTO Session
               (startTime, startMoney, addedMoney, stopTime, stopMoney)
             VALUES
               (?, ?, ?, ?, ?)'''
    with closing(conn.cursor()) as c:
        c.execute(sql, (session.startTime, session.startMoney,
                        session.addedMoney,
                        session.stopTime, session.stopMoney))
    conn.commit()

def main():
    connect()
    session = get_last_session()
    print("Money:", session.stopMoney)

    session = Session()
    session.startTime = "x"
    session.startMoney = 120.0
    session.stopTime = "y"
    session.stopMoney = 30.0
    add_session(session)

    close()
    


if __name__ == "__main__":
    main()
