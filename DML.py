
def select_All_users(conn):
    """
    Affiche la liste de tous les utilisateurs.

    :param conn: Connexion à la base de données
    """
    cur = conn.cursor()
    cur.execute("""
                SELECT *
                FROM Users
                """)

    rows = cur.fetchall()

    for row in rows:
        print(row)


def select_all_posts(conn):
    """
    Affiche la liste de tous les posts des randonneurs.

    :param conn: Connexion à la base de données
    """
    cur = conn.cursor()
    cur.execute("""
                SELECT *
                FROM Posts
                """)

    rows = cur.fetchall()

    for row in rows:
        print(row)
     
def select_all_comments(conn):
    """
    Affiche la liste de tous les commentaires des posts.

    :param conn: Connexion à la base de données
    """
    cur = conn.cursor()
    cur.execute("""
                SELECT *
                FROM Comments
                """)

    rows = cur.fetchall()

    for row in rows:
        print(row)

def select_all_journeys(conn):
    """
    Affiche la liste de toutes les randonnées.

    :param conn: Connexion à la base de données
    """
    cur = conn.cursor()
    cur.execute("""
                SELECT *
                FROM Journeys
                """)

    rows = cur.fetchall()

    for row in rows:
        print(row)

def select_all_hikes(conn):
    """
    Affiche la liste de tous les randonneurs et les leur randonnées effetuées.

    :param conn: Connexion à la base de données
    """
    cur = conn.cursor()
    cur.execute("""
                SELECT *
                FROM Hikes
                """)

    rows = cur.fetchall()

    for row in rows:
        print(row)

def select_all_upvotes(conn):
    cur = conn.cursor()
    cur.execute("""
                SELECT *
                FROM Upvotes
                """)

    rows = cur.fetchall()

    for row in rows:
        print(row)
def select_all_downvotes(conn):
   
    cur = conn.cursor()
    cur.execute("""
                SELECT *
                FROM Downvotes
                """)

    rows = cur.fetchall()

    for row in rows:
        print(row)

############################# INSERT REQUESTS ##############################
def insert_user(conn):
    firstName=input("userFirstName: ")
    lastName=input("userLastName: ")
    dateOfBirth=input("userDateOfBirth format(YYYY-MM-DD): ")
    email=input("userEmail: ")

    cur = conn.cursor()
    cur.execute("""
                INSERT INTO Users 
                (userFirstName,userLastName,userDateOfBirth,userEmail) 
                VALUES (?,?,?,?) 
            """,[firstName,lastName,dateOfBirth,email])

    
        

def insert_post (conn):
    title=input("postTitle : ")
    body=input("postBody : ")
    # postVotes=int(input("postVotes : "))
    userId=int(input("userId: "))

    cur = conn.cursor()
    cur.execute("""
                INSERT INTO Posts 
                (postTitle,postBody,userId) 
                VALUES 
                (?,?,?,?)
            """,[title,body,userId])

  

def insert_comment(conn):
    body=input("commentBody : ")
    userId=int(input("userId: "))
    postId=int(input("postId: "))

    cur = conn.cursor()
    cur.execute("""
                INSERT INTO Comments 
                (commentBody,postId,userId) 
                VALUES 
                (?,?,?)
            """,[body,postId,userId])

def insert_journey(conn):
    name=input("journeyName : ")
    location=input("journeyLocation: ")
    level=input("difficultyLevel: ")

    cur = conn.cursor()
    cur.execute("""
                INSERT INTO Journeys 
                (journeyName,journeyLocation,difficultyLevel) 
                VALUES 
                (?,?,?)
                """,[name,location,level])

     
def insert_hike(conn):
    userId=int(input("userId : "))
    journeyId=int(input("journeyId: "))
   

    cur = conn.cursor()
    cur.execute("""
                INSERT INTO Hikes 
                (userId,journeyId) 
                VALUES 
                (?,? )

                """,[userId,journeyId])

def upvote_post(conn):
    userId=int(input("userId : "))
    postId=int(input("postId: "))
   

    cur = conn.cursor()
    cur.execute("""
               INSERT INTO Upvotes 
               (userId, postId) 
               VALUES 
               (?,?)
             """,[userId,postId])
    #lire notre vue pour avoir postVotes et update la table post 
def downvote_post(conn):
    userId=int(input("userId : "))
    postId=int(input("postId: "))
   

    cur = conn.cursor()
    cur.execute("""
               INSERT INTO Upvotes 
               (userId, postId) 
               VALUES 
               (?,?)
             """,[userId,postId])

################################# UPDATE REQUESTS ###########################################
def update_user(conn):
    userId=int(input("userId : "))
    firstName=input("userFirstName: ")
    lastName=input("userLastName: ")
    dateOfBirth=input("userDateOfBirth format(YYYY-MM-DD): ")
    email=input("userEmail: ")

    cur = conn.cursor()
    cur.execute("""
                UPDATE Users 
                SET userFirstName=?,userLastName=?,userDateOfBirth=?,userEmail=?
                WHERE userId=?
            """,[firstName,lastName,dateOfBirth,email,userId])

        
def update_post(conn):
    postId=int(input("postId: "))
    title=input("postTitle : ")
    # votes=int(input("postVotes : "))
    body=input("postBody : ")

    cur = conn.cursor()
    cur.execute("""
                UPDATE Posts 
                SET postTitle=?,postBody=?
                WHERE postId=?
            """,[title,body,postId])
            
def update_comment(conn):
    commentId=int(input("commentId: "))
    body=input("commentBody : ")

    cur = conn.cursor()
    cur.execute("""
                UPDATE Comments 
                SET commentBody=?
                WHERE commentId=?
            """,[body,commentId])

       
def update_journey(conn):
    journeyId=int(input("journeyId: "))
    name=input("journeyName : ")
    location=input("journeyLocation: ")
    level=input("difficultyLevel: ")

    cur = conn.cursor()
    cur.execute("""
                UPDATE Journeys
                journeyName=?,journeyLocation=?,difficultyLevel=?
                """,[name,location,level])



########################################### DELETE REQUESTS ##############################################################
def delete_user(conn):
    userId=int(input("userId: "))

    #Pour supprimer un utilisateur il faut bien prendre en compte les autres dépendances.
    #Il faut donc supprimer l'apparition de cet utilisateur dans l'ordre inverse de création des relations
    
    #DELETE FROM Downvotes 
    cur = conn.cursor()
    cur.execute("""
                DELETE FROM Downvotes
                WHERE userId=?
            """,[userId])
    

    #DELETE FROM DOWNVOTES FOR OTHER USERS
    cur = conn.cursor()
    cur.execute("""
                WITH Ids AS(
                SELECT postId
                FROM Posts
                WHERE userId=?
                )
                DELETE FROM Downvotes
                WHERE postId IN (
                SELECT * 
                FROM Ids
                )
            """,[userId])
    
    #DELETE FROM Upvotes
    cur.execute("""
                DELETE FROM Upvotes
                WHERE userId=?
            """,[userId])
    
    #DELETE FROM UPVOTES FOR OTHER USERS
    cur = conn.cursor()
    cur.execute("""
                WITH Ids AS(
                SELECT postId
                FROM Posts
                WHERE userId=?
                )
                DELETE FROM Upvotes
                WHERE postId IN (
                SELECT * 
                FROM Ids
                )
            """,[userId])
    #DELETE FROM Hikes
    cur.execute("""
                DELETE FROM Hikes
                WHERE userId=?
            """,[userId])

    #DELETE FROM Comments
   
    cur.execute("""
                DELETE FROM Comments
                WHERE userId=?
            """,[userId])
    
    #DELETE FROM COMMENTS FOR OTHER USERS
    cur = conn.cursor()
    cur.execute("""
                WITH Ids AS(
                SELECT postId
                FROM Posts
                WHERE userId=?
                )
                DELETE FROM Comments
                WHERE postId IN (
                SELECT * 
                FROM Ids
                )
            """,[userId])

    
    #DELETE FROM Posts
    cur.execute("""
                DELETE FROM Posts
                WHERE userId=?
            """,[userId])

 

    # DELETE USER
    cur.execute("""
                DELETE FROM Users
                WHERE userId=?
            """,[userId])
    

def delete_post(conn):
    postId=int(input("postId: "))

    #ON FAIT LA MÊME CHOSE QUE POUR LA SUPPRESSION D'UN URILISATEUR

     #DELETE FROM Downvotes
    cur = conn.cursor()
    cur.execute("""
                DELETE FROM Downvotes
                WHERE postId=?
            """,[postId])
    #DELETE FROM Upvotes
    cur.execute("""
                DELETE FROM Upvotes
                WHERE postId=?
            """,[postId])


    #DELETE FROM Comments
   
    cur.execute("""
                DELETE FROM Comments
                WHERE postId=?
            """,[postId])
  
    #DELETE POST

    cur.execute("""
                DELETE FROM Posts
                WHERE postId=?
            """,[postId])
def delete_comment(conn):
    commentId=int(input("commentId: "))

    cur = conn.cursor()
    cur.execute("""
                DELETE FROM Comments
                WHERE commentId=?
            """,[commentId])



