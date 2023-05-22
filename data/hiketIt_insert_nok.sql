-- Jeux de données NOK (ne doit pas marcher àprès avoir éxécuté le jeux de données NOK)

--USER--
--utilisateur possédant la même adresses mail qu'un autre
INSERT INTO Users (userFirstName,userLastName,userDateOfBirth,userEmail) VALUES ('Juju','jaguar',strftime('%Y-%m-%d', '1999-10-31'),'jugurtaourzik@gmail.com');
--utilisateur sans nom ou prénom
INSERT INTO Users (userFirstName,userLastName,userDateOfBirth,userEmail) VALUES ('Valérie',NULL,strftime('%Y-%m-%d', '1969-10-31'),'anonyme22@gmail.com');
INSERT INTO Users (userFirstName,userLastName,userDateOfBirth,userEmail) VALUES (NULL,'Stones',strftime('%Y-%m-%d', '1969-12-31'),'anonyme64@gmail.com');

--POSTS--
-- Post d'un utilisateur inexistant
INSERT INTO Posts (postTitle,postBody,userId) VALUES ('Une nouvelle randonnée à découvrir ..','Je vous conseille la nouvelle randonnée de Brest, la cascade du trésorier.',0,2345);
--post sans postBody ou sans postTitle ou sans userid
INSERT INTO Posts (postTitle,postBody,userId) VALUES (NULL,'Je vous conseille la nouvelle randonnée de Brest, la cascade du trésorier.',26);
INSERT INTO Posts (postTitle,postBody,userId) VALUES ('Une nouvelle randonnée à découvrir ..',NULL,26);
INSERT INTO Posts (postTitle,postBody,userId) VALUES ('Une nouvelle randonnée à découvrir ..','Je vous conseille la nouvelle randonnée de Brest, la cascade du trésorier.',NULL);
--COMMENTS--
-- commentaire sans commentBody ou sans postId ou sans userId
INSERT INTO Comments (commentBody,postId,userId) VALUES (NULL,2,1);
INSERT INTO Comments (commentBody,postId,userId) VALUES ("Hello , welcome to HikeIt platform, you'll enjoy your activity",NULL,1);
INSERT INTO Comments (commentBody,postId,userId) VALUES ("Hello , welcome to HikeIt platform, you'll enjoy your activity",2,NULL);
-- commentaire d'un poste qui n'existe pas
INSERT INTO Comments (commentBody,postId,userId) VALUES ("Hello , welcome to HikeIt platform, you'll enjoy your activity",45567,1);
-- commentaire d'un utilisateur inexistant
INSERT INTO Comments (commentBody,postId,userId) VALUES ("Hello , welcome to HikeIt platform, you'll enjoy your activity",2,123456);

--DIFFICULTIES
-- insertion d'une difficulté autre que easy medium ou hard
INSERT INTO Difficulties (difficultyLevel,difficultyDuration,difficultyMinLength,difficultyHeightDifference) VALUES ('De_la_mort_qui_tue','100h',1000,500000);
--insertion d'une difficulté sans le difficultyDuration,difficultyMinLength ou sans difficultyHeightDifference
INSERT INTO Difficulties (difficultyLevel,difficultyDuration,difficultyMinLength,difficultyHeightDifference) VALUES ('medium',NULL,1000,800);
INSERT INTO Difficulties (difficultyLevel,difficultyDuration,difficultyMinLength,difficultyHeightDifference) VALUES ('easy','100h',NULL,500);
INSERT INTO Difficulties (difficultyLevel,difficultyDuration,difficultyMinLength,difficultyHeightDifference) VALUES ('easy','100h',1000,NULL);

--JOURNEYS
--insertion d'un parcours sans nom ou sans localisation ou sans niveau de difficulté
INSERT INTO Journeys (journeyName,journeyLocation,difficultyLevel) VALUES (NULL,"Grenoble","easy");
INSERT INTO Journeys (journeyName,journeyLocation,difficultyLevel) VALUES ("La matchatcha",NULL,"easy");
INSERT INTO Journeys (journeyName,journeyLocation,difficultyLevel) VALUES ("La matchatcha","Grenoble",NULL);
--insertion d'un parcours avec un niveau de difficulté non défini
INSERT INTO Journeys (journeyName,journeyLocation,difficultyLevel) VALUES ("Love bolognaise","Grenoble","not easy");

--HIKES
--insertion d'une association de parcours&randonneur sans que l'un des deux existe
INSERT INTO Hikes (userId,journeyId) VALUES (1,4000 );
INSERT INTO Hikes (userId,journeyId) VALUES (3245,2 );
--insertion d'une association de parcours&randonneur  avec l'un des deux NULL
INSERT INTO Hikes (userId,journeyId) VALUES (NULL,4000 );
INSERT INTO Hikes (userId,journeyId) VALUES (1,NULL);

--UPVOTES
-- insertion d'une association utilisateur&post sans que l'un des deux existe
INSERT INTO Upvotes (userId, postId) VALUES (1,240);
INSERT INTO Upvotes (userId, postId) VALUES (342,4);

-- insertion d'une association utilisateur&post avec l'un des deux NULL
INSERT INTO Upvotes (userId, postId) VALUES (NULL,240);
INSERT INTO Upvotes (userId, postId) VALUES (1,NULL);

--DOWNVOTES
-- insertion d'une association utilisateur&post sans que l'un des deux existe
INSERT INTO Downvotes (userId, postId) VALUES (1,-23);
INSERT INTO Downvotes (userId, postId) VALUES (999,4);

-- insertion d'une association utilisateur&post sans que l'un des deux existe

INSERT INTO Downvotes (userId, postId) VALUES (NULL,4);
INSERT INTO Downvotes (userId, postId) VALUES (1,NULL);



