DROP VIEW IF EXISTS VotesView;
DROP TABLE IF EXISTS Downvotes;
DROP TABLE IF EXISTS Upvotes;
DROP TABLE IF EXISTS Hikes;
DROP TABLE IF EXISTS Journeys;
DROP TABLE IF EXISTS Difficulties;
DROP TABLE IF EXISTS Comments;
DROP TABLE IF EXISTS Posts;
DROP TABLE IF EXISTS Users;


CREATE TABLE Users (
   userId INTEGER PRIMARY KEY AUTOINCREMENT,
   userFirstName VARCHAR(512) NOT NULL   ,
   userLastName VARCHAR(512) NOT NULL   ,
   userDateOfBirth DATETIME,
   userEmail VARCHAR(1024) UNIQUE

  
);

CREATE TABLE Posts (
   postId INTEGER PRIMARY KEY AUTOINCREMENT,
   postTitle VARCHAR(1024) NOT NULL ,
   postBody  TEXT NOT NULL,
   -- postVotes INTEGER NOT NULL DEFAULT 0,
   postCreatedAt DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
   postUpdatedAt DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP, 
   userId INTEGER NOT NULL,
  
   
   CONSTRAINT POSTS_KEY FOREIGN KEY (userId) REFERENCES Users(userId)

);

CREATE TABLE Comments (
   commentId INTEGER  PRIMARY KEY AUTOINCREMENT,
   commentBody  TEXT NOT NULL,
   commentCreatedAt DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
   commentUpdatedAt DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
   postId INTEGER NOT NULL,
   userId INTEGER NOT NULL,
  
  
   CONSTRAINT COMMENTS_user_key FOREIGN KEY (userId) REFERENCES Users(userId),
   CONSTRAINT COMMENTS_post_key FOREIGN KEY (postId) REFERENCES Posts(postId)
);

CREATE TABLE Difficulties (
   difficultyLevel VARCHAR (128),
   difficultyDuration TIME NOT NULL,
   difficultyMinLength INTEGER NOT NULL,
   difficultyHeightDifference INTEGER NOT NULL,
   
   CONSTRAINT Difficulties_PKEY PRIMARY KEY (difficultyLevel),
   CONSTRAINT DIFFICULTY_KEY CHECK (
      difficultyLevel = 'easy' AND  difficultyHeightDifference =500  AND  difficultyDuration='3h' OR
      difficultyLevel= 'medium' AND  difficultyHeightDifference =800  AND  difficultyDuration='5h' OR 
      difficultyLevel = 'hard' AND  difficultyHeightDifference =1500 AND  difficultyDuration='10h' )
);


CREATE TABLE Journeys (
   journeyId INTEGER PRIMARY KEY AUTOINCREMENT,
   journeyName VARCHAR (128) NOT NULL,
   journeyLocation VARCHAR (128) NOT NULL,
   difficultyLevel VARCHAR (128) NOT NULL,

   
   CONSTRAINT Journeys_key FOREIGN KEY (difficultyLevel) REFERENCES Difficulties(difficultyLevel)
 
);


CREATE TABLE Hikes (
   userId INTEGER NOT NULL,
   journeyId INTEGER NOT NULL,

   CONSTRAINT HIKES_PKEY PRIMARY KEY (userId,journeyId),
   CONSTRAINT HIKES_FKEY1 FOREIGN KEY (userId) REFERENCES Users(userId),
   CONSTRAINT HIKES_FKEY2 FOREIGN KEY (journeyId) REFERENCES Journeys(journeyId)
 
);

CREATE TABLE Upvotes (
   userId INTEGER NOT NULL,
   postId INTEGER NOT NULL,

   CONSTRAINT HIKES_PKEY PRIMARY KEY (userId,postId),
   CONSTRAINT HIKES_FKEY1 FOREIGN KEY (userId) REFERENCES Users(userId),
   CONSTRAINT HIKES_FKEY2 FOREIGN KEY (postId) REFERENCES Posts(postId)
 
);
CREATE TABLE Downvotes (
   userId INTEGER NOT NULL,
   postId INTEGER NOT NULL,

   CONSTRAINT HIKES_PKEY PRIMARY KEY (userId,postId),
   CONSTRAINT HIKES_FKEY1 FOREIGN KEY (userId) REFERENCES Users(userId),
   CONSTRAINT HIKES_FKEY2 FOREIGN KEY (postId) REFERENCES Posts(postId)
 
);

CREATE VIEW VotesView (postId,votes)
AS
   WITH Numberdv AS( SELECT *,-1 AS value
   FROM Downvotes), Numberuv AS(SELECT *,1 AS value
   FROM Upvotes),Votesf AS ( SELECT *
   FROM Numberdv 
   UNION 
   SELECT * 
   FROM Numberuv),Finalfinal AS (SELECT postId, sum(value) AS votes
   FROM Votesf
   GROUP BY postId)
   SELECT postId,0
   FROM Posts
   WHERE postId NOT IN (SELECT postId
   FROM Finalfinal)
   UNION
   SELECT postId,votes
   FROM Finalfinal;

   
  

 