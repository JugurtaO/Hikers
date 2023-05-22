-- Jeux de données OK

-- Alimentation de la table Users --
INSERT INTO Users (userFirstName,userLastName,userDateOfBirth,userEmail) VALUES ('Jugurta','Ourzik',strftime('%Y-%m-%d', '2002-10-31'),'jugurtaourzik@gmail.com');
INSERT INTO Users (userFirstName,userLastName,userDateOfBirth,userEmail) VALUES ('Nils','Miel',strftime('%Y-%m-%d', '2003-10-31'),"nilsmiel@gmail.com");
INSERT INTO Users (userFirstName,userLastName,userDateOfBirth,userEmail) VALUES ('Thomas','Dupont',strftime('%Y-%m-%d', '2003-08-21'),"thomasdupont@gmail.com");
INSERT INTO Users (userFirstName,userLastName,userDateOfBirth,userEmail) VALUES ('Emelie','Mount',strftime('%Y-%m-%d', '1987-10-31'),"emeliemount@gmail.com");
INSERT INTO Users (userFirstName,userLastName,userDateOfBirth,userEmail) VALUES ('Aurelie','chris',strftime('%Y-%m-%d', '2001-7-03'),"aureliechris@gmail.com");
INSERT INTO Users (userFirstName,userLastName,userDateOfBirth,userEmail) VALUES ('Clement','angel',strftime('%Y-%m-%d', '1998-02-23'),"clement87@gmail.com");
INSERT INTO Users (userFirstName,userLastName,userDateOfBirth,userEmail) VALUES ('Jean','Michel',strftime('%Y-%m-%d', '2004-03-31'),"jean1@gmail.com");
INSERT INTO Users (userFirstName,userLastName,userDateOfBirth,userEmail) VALUES ('Louis','vuitton',strftime('%Y-%m-%d', '1991-05-17'),"Louis14@gmail.com");
INSERT INTO Users (userFirstName,userLastName,userDateOfBirth,userEmail) VALUES ('Emmanuel','Marcon',strftime('%Y-%m-%d', '1988-10-31'),"emmanuel49.3@gmail.com");
INSERT INTO Users (userFirstName,userLastName,userDateOfBirth,userEmail) VALUES ('Angelique','Dutroup',strftime('%Y-%m-%d', '2000-10-29'),"angelique12345@gmail.com");
INSERT INTO Users (userFirstName,userLastName,userDateOfBirth,userEmail) VALUES ('Gabriel','Pichon',strftime('%Y-%m-%d', '1989-04-12'),"gabrielp72@gmail.com");
INSERT INTO Users (userFirstName,userLastName,userDateOfBirth,userEmail) VALUES ('Antoine','herien',strftime('%Y-%m-%d', '1977-08-15'),"antoineherien@gmail.com");
INSERT INTO Users (userFirstName,userLastName,userDateOfBirth,userEmail) VALUES ('Fabien','Ruiz',strftime('%Y-%m-%d', '1994-11-03'),"fabien10@gmail.com");
INSERT INTO Users (userFirstName,userLastName,userDateOfBirth,userEmail) VALUES ('Christian','Dior',strftime('%Y-%m-%d', '1999-12-01'),"diorsauvage@gmail.com");
INSERT INTO Users (userFirstName,userLastName,userDateOfBirth,userEmail) VALUES ('Christine','Fleur',strftime('%Y-%m-%d', '2000-07-30'),"christinerose@gmail.com");
INSERT INTO Users (userFirstName,userLastName,userDateOfBirth,userEmail) VALUES ('Flavien','Dumas',strftime('%Y-%m-%d', '2010-08-14'),"flavienflavour@gmail.com");
INSERT INTO Users (userFirstName,userLastName,userDateOfBirth,userEmail) VALUES ('Harry','Potdebeurre',strftime('%Y-%m-%d', '1996-11-12'),"pouddelart@gmail.com");
INSERT INTO Users (userFirstName,userLastName,userDateOfBirth,userEmail) VALUES ('Fabien','olicart',strftime('%Y-%m-%d', '1989-02-18'),"olicartfabien13@gmail.com");
INSERT INTO Users (userFirstName,userLastName,userDateOfBirth,userEmail) VALUES ('Jugurta','Nath yugerten',strftime('%Y-%m-%d', '2002-10-19'),"LevraiJugurta@gmail.com");
INSERT INTO Users (userFirstName,userLastName,userDateOfBirth,userEmail) VALUES ('Lin','Chaos',strftime('%Y-%m-%d', '1988-10-09'),"Lin1900@gmail.com");
INSERT INTO Users (userFirstName,userLastName,userDateOfBirth,userEmail) VALUES ('Jesus','Christ',strftime('%Y-%m-%d', '2001-10-06'),"Avantjesus666@gmail.com");
INSERT INTO Users (userFirstName,userLastName,userDateOfBirth,userEmail) VALUES ('Marine','Lepen',strftime('%Y-%m-%d', '2001-06-09'),"marineLoveRN@gmail.com");
INSERT INTO Users (userFirstName,userLastName,userDateOfBirth,userEmail) VALUES ('Eric','Damper',strftime('%Y-%m-%d', '2003-6-27'),"Ricgarciadamper@gmail.com");
INSERT INTO Users (userFirstName,userLastName,userDateOfBirth,userEmail) VALUES ('Jessica','Miel',strftime('%Y-%m-%d', '2005-12-17'),"Jessicabelle@gmail.com");
INSERT INTO Users (userFirstName,userLastName,userDateOfBirth,userEmail) VALUES ('Amelia','Miel',strftime('%Y-%m-%d', '1970-08-23'),"Ameliabzbz@gmail.com");
INSERT INTO Users (userFirstName,userLastName,userDateOfBirth,userEmail) VALUES ('Jean Luc','Pelanchon',strftime('%Y-%m-%d', '2001-10-12'),"JeanLucNupess@gmail.com");
INSERT INTO Users (userFirstName,userLastName,userDateOfBirth,userEmail) VALUES ('Patrcik','Karibout',strftime('%Y-%m-%d', '1993-10-23'),"karibout@gmail.com");
INSERT INTO Users (userFirstName,userLastName,userDateOfBirth,userEmail) VALUES ('Clement','Dufisc',strftime('%Y-%m-%d', '2001-05-11'),"attentionAuImpots@gmail.com");
INSERT INTO Users (userFirstName,userLastName,userDateOfBirth,userEmail) VALUES ('Clementine','Mado',strftime('%Y-%m-%d', '1999-10-02'),"clementineMado@gmail.com");
INSERT INTO Users (userFirstName,userLastName,userDateOfBirth,userEmail) VALUES ('Massnsen','Numide',strftime('%Y-%m-%d', '2001-08-01'),"massinissanumide@gmail.com");


-- Alimentation de la table Posts --
INSERT INTO Posts (postTitle,postBody,userId) VALUES ('Une nouvelle randonnée à découvrir ..','Je vous conseille la nouvelle randonnée de Brest, la cascade du trésorier.',26);
INSERT INTO Posts (postTitle,postBody,userId) VALUES ('My first post','Hello, I am new to the platform ,nice to meet you!',2);
INSERT INTO Posts (postTitle,postBody,userId) VALUES ('Auvergne Rhône Alpes','Une région faite pour les randonneurs!, venez la découvrir',2);
INSERT INTO Posts (postTitle,postBody,userId) VALUES ("Je suis trop fort","La randonnée de la mort ,j l'ai réalisée en moins de 8H ." ,2);
INSERT INTO Posts (postTitle,postBody,userId) VALUES ("Le parcours étoufant","Cette semaine , les durs chaleurs m'ont empêché de faire ma randonnée.",1);
INSERT INTO Posts (postTitle,postBody,userId) VALUES ("La citronelle peut être utile ! Hihi","Faites attentions à la randonnée du marais,les moustiques sont de sortie!",26);
INSERT INTO Posts (postTitle,postBody,userId) VALUES ("Les alpes pour vos randonnées!","Attention prenez quand même un guide",13);
INSERT INTO Posts (postTitle,postBody,userId) VALUES ("À clermont, tout se passe comme prévu!","Très satisfait de ma randonnée que je viens de réaliser dans les montagnes de clermont-ferrand",5);
INSERT INTO Posts (postTitle,postBody,userId) VALUES ("Un nouveau livre de randonnée","Je lance mon nouveau livre nommée la bible de la randonnée, enjoy it!",21);
INSERT INTO Posts (postTitle,postBody,userId) VALUES ("Une randonnée d'été","Je marchais , je marchais, je marchais sous le soleil d'été ",15);
INSERT INTO Posts (postTitle,postBody,userId) VALUES ("Une rando écolo , ça existe ?","J'aimerai faire une randonnée sans relacher du CO2 dans l'atmosphère or je respire, que faire ?",1);

-- Alimentation de la table Commentss --
INSERT INTO Comments (commentBody,postId,userId) VALUES ("Hello , welcome to HikeIt platform, you'll enjoy your activity",2,1);
INSERT INTO Comments (commentBody,postId,userId) VALUES ("Mais arrêtez vos salades, espèce de menteur",4,7 );
INSERT INTO Comments (commentBody,postId,userId) VALUES ("Je suis totalement d'accord avec toi, on devrait faire de la rando en apnée",10,21);
INSERT INTO Comments (commentBody,postId,userId) VALUES ("Je confirme , une région incroyable ,n'hésitez pas à suivre Nils Miel c'est le plus fort ",3,4 );
INSERT INTO Comments (commentBody,postId,userId) VALUES ("Welcome to the platform, I know you , you speak french , you are weird!",2,17 );
INSERT INTO Comments (commentBody,postId,userId) VALUES ("Je trouve la question peu pertinente , je downvote",10,28 );

-- Alimentation de la table Difficulties --
INSERT INTO Difficulties (difficultyLevel,difficultyDuration,difficultyMinLength,difficultyHeightDifference) VALUES ('easy','3h',7,500);
INSERT INTO Difficulties (difficultyLevel,difficultyDuration,difficultyMinLength,difficultyHeightDifference) VALUES ('medium','5h',12,800);
INSERT INTO Difficulties (difficultyLevel,difficultyDuration,difficultyMinLength,difficultyHeightDifference) VALUES ('hard','10h',25,1500);


-- Alimentation de la table Journeys --
INSERT INTO Journeys (journeyName,journeyLocation,difficultyLevel) VALUES ("Prairie Vertechamp","Grenoble","easy");
INSERT INTO Journeys (journeyName,journeyLocation,difficultyLevel) VALUES ("La cascade du trésorier","Brest","easy" );
INSERT INTO Journeys (journeyName,journeyLocation,difficultyLevel) VALUES ("La moutarde monte !","Dijon","easy" );
INSERT INTO Journeys (journeyName,journeyLocation,difficultyLevel) VALUES ("Les chemins qui montent","Clermont-ferrand","easy" );
INSERT INTO Journeys (journeyName,journeyLocation,difficultyLevel) VALUES ("Esquive les skieurs !","Chambéry","medium" );
INSERT INTO Journeys (journeyName,journeyLocation,difficultyLevel) VALUES ("La cascade de l'Oursière","Grenoble","medium" );
INSERT INTO Journeys (journeyName,journeyLocation,difficultyLevel) VALUES ("La dent de Crolles","Grenoble","medium" );
INSERT INTO Journeys (journeyName,journeyLocation,difficultyLevel) VALUES ("Pas de géant","Annecy","medium" );
INSERT INTO Journeys (journeyName,journeyLocation,difficultyLevel) VALUES ("La rando d'Alberto","Albertville","medium" );
INSERT INTO Journeys (journeyName,journeyLocation,difficultyLevel) VALUES ("La randonnée de la mort","Montcuq","hard" );
INSERT INTO Journeys (journeyName,journeyLocation,difficultyLevel) VALUES ("La montagne des aviateurs","Toulouse","hard" );

-- Alimentation de la table Hikes --
INSERT INTO Hikes (userId,journeyId) VALUES (1,2 );
INSERT INTO Hikes (userId,journeyId) VALUES (1,3 );
INSERT INTO Hikes (userId,journeyId) VALUES (1,5 );
INSERT INTO Hikes (userId,journeyId) VALUES (2,10 );
INSERT INTO Hikes (userId,journeyId) VALUES (2,2 );
INSERT INTO Hikes (userId,journeyId) VALUES (2,8 );
INSERT INTO Hikes (userId,journeyId) VALUES (2,9 );
INSERT INTO Hikes (userId,journeyId) VALUES (3,2 );
INSERT INTO Hikes (userId,journeyId) VALUES (3,3 );
INSERT INTO Hikes (userId,journeyId) VALUES (5,1 );
INSERT INTO Hikes (userId,journeyId) VALUES (6,4 );
INSERT INTO Hikes (userId,journeyId) VALUES (7,5 );
INSERT INTO Hikes (userId,journeyId) VALUES (7,8 );
INSERT INTO Hikes (userId,journeyId) VALUES (7,9 );
INSERT INTO Hikes (userId,journeyId) VALUES (7,10 );
INSERT INTO Hikes (userId,journeyId) VALUES (7,2 );
INSERT INTO Hikes (userId,journeyId) VALUES (7,7 );
INSERT INTO Hikes (userId,journeyId) VALUES (10,2 );
INSERT INTO Hikes (userId,journeyId) VALUES (10,3 );
INSERT INTO Hikes (userId,journeyId) VALUES (10,4 );
INSERT INTO Hikes (userId,journeyId) VALUES (10,6 );
INSERT INTO Hikes (userId,journeyId) VALUES (10,9 );
INSERT INTO Hikes (userId,journeyId) VALUES (10,10 );
INSERT INTO Hikes (userId,journeyId) VALUES (10,1 );
INSERT INTO Hikes (userId,journeyId) VALUES (10,5 );
INSERT INTO Hikes (userId,journeyId) VALUES (1,8 );
INSERT INTO Hikes (userId,journeyId) VALUES (1,7 );
INSERT INTO Hikes (userId,journeyId) VALUES (14,2 );
INSERT INTO Hikes (userId,journeyId) VALUES (13,3 );
INSERT INTO Hikes (userId,journeyId) VALUES (13,4 );
INSERT INTO Hikes (userId,journeyId) VALUES (15,10 );
INSERT INTO Hikes (userId,journeyId) VALUES (30,5 );
INSERT INTO Hikes (userId,journeyId) VALUES (17,8 );
INSERT INTO Hikes (userId,journeyId) VALUES (17,9 );
INSERT INTO Hikes (userId,journeyId) VALUES (22,2 );
INSERT INTO Hikes (userId,journeyId) VALUES (23,4 );
INSERT INTO Hikes (userId,journeyId) VALUES (27,7 );
INSERT INTO Hikes (userId,journeyId) VALUES (29,4 );
INSERT INTO Hikes (userId,journeyId) VALUES (29,5 );
INSERT INTO Hikes (userId,journeyId) VALUES (29,6 );
INSERT INTO Hikes (userId,journeyId) VALUES (29,7 );
INSERT INTO Hikes (userId,journeyId) VALUES (21,1 );
INSERT INTO Hikes (userId,journeyId) VALUES (21,2 );
INSERT INTO Hikes (userId,journeyId) VALUES (21,3 );
INSERT INTO Hikes (userId,journeyId) VALUES (21,4 );
INSERT INTO Hikes (userId,journeyId) VALUES (21,5 );
INSERT INTO Hikes (userId,journeyId) VALUES (21,6 );
INSERT INTO Hikes (userId,journeyId) VALUES (21,7 );
INSERT INTO Hikes (userId,journeyId) VALUES (21,8 );
INSERT INTO Hikes (userId,journeyId) VALUES (21,9 );
INSERT INTO Hikes (userId,journeyId) VALUES (21,10 );






-- Alimentation de la table Upvotes --
INSERT INTO Upvotes (userId, postId) VALUES (1,1);
INSERT INTO Upvotes (userId, postId) VALUES (2,1);
INSERT INTO Upvotes (userId, postId) VALUES (2,3);
INSERT INTO Upvotes (userId, postId) VALUES (3,3);
INSERT INTO Upvotes (userId, postId) VALUES (4,3);
INSERT INTO Upvotes (userId, postId) VALUES (5,3);
INSERT INTO Upvotes (userId, postId) VALUES (30,3);
INSERT INTO Upvotes (userId, postId) VALUES (7,3);
INSERT INTO Upvotes (userId, postId) VALUES (7,4);
INSERT INTO Upvotes (userId, postId) VALUES (10,3);
INSERT INTO Upvotes (userId, postId) VALUES (12,3);
INSERT INTO Upvotes (userId, postId) VALUES (15,3);
INSERT INTO Upvotes (userId, postId) VALUES (14,3);
INSERT INTO Upvotes (userId, postId) VALUES (1,5);
INSERT INTO Upvotes (userId, postId) VALUES (2,5);
INSERT INTO Upvotes (userId, postId) VALUES (3,5);
INSERT INTO Upvotes (userId, postId) VALUES (4,5);
INSERT INTO Upvotes (userId, postId) VALUES (5,5);
INSERT INTO Upvotes (userId, postId) VALUES (6,5);
INSERT INTO Upvotes (userId, postId) VALUES (7,5);
INSERT INTO Upvotes (userId, postId) VALUES (8,5);
INSERT INTO Upvotes (userId, postId) VALUES (9,5);
INSERT INTO Upvotes (userId, postId) VALUES (27,5);
INSERT INTO Upvotes (userId, postId) VALUES (30,5);
INSERT INTO Upvotes (userId, postId) VALUES (25,5);
INSERT INTO Upvotes (userId, postId) VALUES (26,5);
INSERT INTO Upvotes (userId, postId) VALUES (17,5);
INSERT INTO Upvotes (userId, postId) VALUES (19,5);
INSERT INTO Upvotes (userId, postId) VALUES (3,6);
INSERT INTO Upvotes (userId, postId) VALUES (8,6);
INSERT INTO Upvotes (userId, postId) VALUES (25,8);
INSERT INTO Upvotes (userId, postId) VALUES (1,9);
INSERT INTO Upvotes (userId, postId) VALUES (2,9);
INSERT INTO Upvotes (userId, postId) VALUES (3,9);
INSERT INTO Upvotes (userId, postId) VALUES (4,9);
INSERT INTO Upvotes (userId, postId) VALUES (5,9);
INSERT INTO Upvotes (userId, postId) VALUES (6,9);
INSERT INTO Upvotes (userId, postId) VALUES (7,9);
INSERT INTO Upvotes (userId, postId) VALUES (8,9);
INSERT INTO Upvotes (userId, postId) VALUES (10,9);
INSERT INTO Upvotes (userId, postId) VALUES (24,9);
INSERT INTO Upvotes (userId, postId) VALUES (28,9);
INSERT INTO Upvotes (userId, postId) VALUES (6,10);
INSERT INTO Upvotes (userId, postId) VALUES (1,11);
INSERT INTO Upvotes (userId, postId) VALUES (2,11);
INSERT INTO Upvotes (userId, postId) VALUES (3,11);
INSERT INTO Upvotes (userId, postId) VALUES (10,11);
INSERT INTO Upvotes (userId, postId) VALUES (4,11);
INSERT INTO Upvotes (userId, postId) VALUES (5,11);
INSERT INTO Upvotes (userId, postId) VALUES (6,11);
INSERT INTO Upvotes (userId, postId) VALUES (7,11);
INSERT INTO Upvotes (userId, postId) VALUES (8,11);
INSERT INTO Upvotes (userId, postId) VALUES (9,11);


-- Alimentation de la table Downvotes --

INSERT INTO Downvotes (userId, postId) VALUES (1,2);
INSERT INTO Downvotes (userId, postId) VALUES (3,2);
INSERT INTO Downvotes (userId, postId) VALUES (1,4);
INSERT INTO Downvotes (userId, postId) VALUES (2,4);
INSERT INTO Downvotes (userId, postId) VALUES (3,4);
INSERT INTO Downvotes (userId, postId) VALUES (14,4);
INSERT INTO Downvotes (userId, postId) VALUES (19,4);
INSERT INTO Downvotes (userId, postId) VALUES (30,4);
INSERT INTO Downvotes (userId, postId) VALUES (7,4);
INSERT INTO Downvotes (userId, postId) VALUES (9,4);
INSERT INTO Downvotes (userId, postId) VALUES (8,4);
INSERT INTO Downvotes (userId, postId) VALUES (23,4);
INSERT INTO Downvotes (userId, postId) VALUES (27,4);

