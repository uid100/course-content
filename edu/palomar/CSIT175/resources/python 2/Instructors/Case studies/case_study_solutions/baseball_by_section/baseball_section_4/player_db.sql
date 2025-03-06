-- Drop the table if it already exists
DROP TABLE IF EXISTS Player;

-- Create the table
CREATE TABLE Player(
    playerID    INTEGER PRIMARY KEY     NOT NULL,
    batOrder    INTEGER                 NOT NULL,
    firstName   TEXT                    NOT NULL,
    lastName    TEXT                    NOT NULL,
    position    TEXT                    NOT NULL,
    atBats      INTEGER                 NULL,
    hits        INTEGER                 NULL
);

-- Populate the table
INSERT INTO Player VALUES
(1,1,'Denard','Span','CF',545,174),
(2,2,'Brandon','Belt','1B',533,127),
(3,3,'Buster','Posey','C',535,176),
(4,4,'Hunter','Pence','RF',485,174),
(5,5,'Brandon','Crawford','SS',532,125),
(6,6,'Eduardo','Nunez','3B',477,122),
(7,7,'Joe','Panik','2B',475,138),
(8,8,'Jarrett','Parker','LF',215,58),
(9,9,'Madison','Bumgarner','P',103,21);