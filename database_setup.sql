-Players Table

CREATE TABLE Players (
    PlayerID INT PRIMARY KEY IDENTITY(1,1),
    Nickname NVARCHAR(50) NOT NULL,
    TotalKills INT DEFAULT 0,
    TotalDeaths INT DEFAULT 0,
    TotalMatches INT DEFAULT 0
);


-Matches Table

CREATE TABLE Matches (
    MatchID INT PRIMARY KEY IDENTITY(1,1),
    MatchDate DATETIME DEFAULT GETDATE(),
    MapName NVARCHAR(50),
    Result NVARCHAR(10) 
)

-Statistics from specific matches

CREATE TABLE PlayerMatchStats (
    StatID INT PRIMARY KEY IDENTITY(1,1),
    MatchID INT FOREIGN KEY REFERENCES Matches(MatchID),
    PlayerID INT FOREIGN KEY REFERENCES Players(PlayerID),
    Kills INT,
    Deaths INT,
    ADR DECIMAL(5,2) 
);

-trigger to update statistics

CREATE TRIGGER trg_UpdateStats
ON PlayerMatchStats
AFTER INSERT
AS
BEGIN
    UPDATE Players
    SET TotalKills = TotalKills + i.Kills,
        TotalDeaths = TotalDeaths + i.Deaths,
        TotalMatches = TotalMatches + 1
    FROM Players p
    INNER JOIN inserted i ON p.PlayerID = i.PlayerID;
END;


-view of basic player statistics

CREATE VIEW v_Leaderboard AS
SELECT 
    Nickname,
    TotalMatches,
    TotalKills,
    TotalDeaths,
    CAST(TotalKills AS FLOAT) / NULLIF(TotalDeaths, 0) AS KD_Ratio
FROM Players;
