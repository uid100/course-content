-- Drop the table if it already exists
DROP TABLE IF EXISTS Session;

CREATE TABLE Session (
    sessionID   INTEGER PRIMARY KEY     NOT NULL,
    startTime   TEXT                    NOT NULL,
    startMoney  REAL                    NOT NULL,
    addedMoney  REAL                    NOT NULL,
    stopTime    TEXT                    NOT NULL,
    stopMoney   REAL                    NOT NULL
);

INSERT INTO Session (startTime, startMoney, addedMoney, stopTime, stopMoney)
VALUES ("2016-12-22 14:32:46.957891","100","0","2016-12-22 14:32:57.744511","100");
