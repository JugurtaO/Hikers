import DML
def usersMenu(conn):
    while (True):
                print("*****SELECT USERS MENU*****")
                print("     1-users who have done more than x hikes")
                print("     2-users who have done hard hikes ")
                print("     3-users who have hiked in x location")
                print("     4-users who have upvoted at least 1 post")
                print("     5-users who posted the most")
                print("     6-all users")
                print("     7-QUIT")
               
                
                subOption=int(input("Enter next option for SELECT Users menu: "))
                match subOption:
                    case 7:
                        break
                    case 1:
                        x=int(input("Enter number of hikes wanted:"))
                        cur = conn.cursor()
                        cur.execute("""
                                    WITH TMP AS(
                                    SELECT userId,COUNT(journeyId) as N
                                    FROM Hikes
                                    GROUP BY userId
                                    )
                                    SELECT userId,userFirstName,userLastName
                                    FROM TMP T JOIN Users U USING (userId)
                                    WHERE N>?
                                    """,[x])

                        rows = cur.fetchall()

                        for row in rows:
                            print(row)
                    case 2:
                        cur = conn.cursor()
                        cur.execute("""
                                    SELECT DISTINCT userId,userFirstName,userLastName
                                    FROM Hikes H JOIN Journeys J USING(journeyId) JOIN Difficulties D USING( difficultyLevel) JOIN Users U USING(userId)
                                    WHERE difficultyLevel="hard"
                                    """)

                        rows = cur.fetchall()

                        for row in rows:
                            print(row)
                    case 3:
                        name=input("Enter wanted location : ")
                        print("")
                        cur = conn.cursor()
                        cur.execute("""
                                    SELECT DISTINCT userId,userFirstName,userLastName,journeyLocation
                                    FROM Hikes H JOIN Journeys J USING(journeyId) JOIN Users U USING(userId)
                                    WHERE journeyLocation=?
                                    """,[name])

                        rows = cur.fetchall()

                        for row in rows:
                            print(row)

                        
                    case 4:
                        cur = conn.cursor()
                        cur.execute("""
                                    SELECT DISTINCT userId,userFirstName,userLastName
                                    FROM Upvotes Up JOIN Users U USING(userId)
                                    """)

                        rows = cur.fetchall()

                        for row in rows:
                            print(row)
                    case 5:
                        cur = conn.cursor()
                        cur.execute("""
                                   WITH TMP AS(
                                   SELECT userId,COUNT(postId) AS N
                                   FROM Posts
                                   GROUP BY userId
                                   ),TMP2 AS(
                                   SELECT MAX(N) AS high
                                   FROM TMP
                                   )
                                   SELECT userFirstName,userLastName,high
                                   FROM TMP2 T2 JOIN TMP T1 ON(T2.high=T1.N) JOIN Users USING (userId)
                                    """)

                        rows = cur.fetchall()

                        for row in rows:
                            print(row)
                    case 6:
                          DML.select_All_users(conn)
                    case _:
                        print("Ouups,option not mentionned in main menu!")


def postsMenu(conn):
    while (True):
                print("*****SELECT POSTS MENU*****")
                print("     1-posts with negtive votes")
                print("     2-post with most votes ")
                print("     3-posts of users who have done medium hike")
                print("     4-all posts")
                print("     5-QUIT ")

             
               
                
                subOption=int(input("Enter next option for SELECT posts menu: "))
                match subOption:
                    case 5:
                        break
                    case 1:
                        cur = conn.cursor()
                        cur.execute("""
                                   SELECT postTitle,postBody ,userFirstName,userLastName,votes
                                   FROM VotesView Vo JOIN Posts USING(postId) JOIN Users U USING(userId)
                                   WHERE votes<0
                                    """)

                        rows = cur.fetchall()

                        for row in rows:
                            print(row)

                        
                    case 2:
                        cur = conn.cursor()
                        cur.execute("""

                                   WITH Maximum AS(
                                    SELECT postId,MAX(votes) AS N
                                    FROM VotesView
                                   )
                                   SELECT postTitle,postBody ,userFirstName,userLastName,N
                                   FROM Maximum Vo JOIN Posts USING(postId) JOIN Users U USING(userId)
                                    """)

                        rows = cur.fetchall()

                        for row in rows:
                            print(row)
                        
                    case 3:
                        cur = conn.cursor()
                        cur.execute("""
                                   SELECT DISTINCT  postTitle,postBody ,userFirstName,userLastName,votes
                                   FROM Hikes H JOIN Journeys USING(journeyId) JOIN Users U USING(userId) JOIN Posts USING(userId) JOIN VotesView Vo USING(postId)  
                                   WHERE difficultyLevel="medium" 
                                    """)

                        rows = cur.fetchall()

                        for row in rows:
                            print(row)


                    case 4:
                        DML.select_all_posts(conn)
                    case _:
                        print("Ouups,option not mentionned in main menu!")

def commentsMenu(conn):
    while (True):
                print("*****SELECT COMMENTS MENU*****")
                print("     1-comments of users who have upvoted at least once")
                print("     2-Comments of the post of your choice")
                print("     3-all comments")
                print("     4-QUIT")
             
               
                
                subOption=int(input("Enter next option for SELECT comments menu: "))
                match subOption:
                    case 4:
                        break
                    case 1:
                        cur = conn.cursor()
                        cur.execute("""
                                   SELECT DISTINCT commentBody,userFirstName,userLastName
                                   FROM Upvotes U JOIN Comments USING(userId) JOIN Users U USING(userId)
                                    """)

                        rows = cur.fetchall()

                        for row in rows:
                            print(row)
                        
                    case 2:
                        postId=input("Enter postId: ")
                        cur = conn.cursor()
                        cur.execute("""
                                   SELECT DISTINCT commentBody,userFirstName,userLastName
                                   FROM Comments C JOIN Users U USING (userId)JOIN Posts P USING (postId)
                                   WHERE postId = ?
                                    """,[postId])

                        rows = cur.fetchall()

                        for row in rows:
                            print(row)
                           
                    case 3:
                        DML.select_all_comments(conn)
                    case _:
                        print("Ouups,option not mentionned in main menu!")

def  journeys_Hikes_Menu(conn):
      while (True):
                print("*****SELECT Journeys & Hikes MENU*****")
                print("     1-all hikes in Grenoble")
                print("     2-hikes done at least by 5 users")
                print("     3-names and minimal duration of all hikes")
                print("     4-hikes done by x user")
                print("     5-the location of the most realized hike")
                print("     6-all journeys")
                print("     7-all hikes")
                print("     8-QUIT")
               
                
                subOption=int(input("Enter next option for SELECT Journeys & Hikes menu: "))
                match subOption:
                    case 8:
                        break
                    case 1:
                        cur = conn.cursor()
                        cur.execute("""
                                   SELECT  journeyName,journeyLocation
                                   FROM Journeys
                                   WHERE journeyLocation="Grenoble"
                                    """)

                        rows = cur.fetchall()

                        for row in rows:
                            print(row)
                       
                    case 2:
                        cur = conn.cursor()
                        cur.execute("""
                                   WITH NumberOfHikersPerHike AS(
                                   SELECT journeyId, COUNT(userId) AS N
                                   FROM Hikes
                                   GROUP BY journeyId
                                   )
                                   SELECT journeyName,journeyLocation,difficultyLevel,N
                                   FROM NumberOfHikersPerHike T1 JOIN Journeys T2 USING(journeyId)
                                   WHERE N>=5
                                    """)

                        rows = cur.fetchall()
                        print("")
                        for row in rows:
                            print(row)
                        
                    case 3:
                        cur = conn.cursor()
                        cur.execute("""
                                   SELECT journeyName,journeyLocation,difficultyDuration
                                   FROM Journeys J JOIN Difficulties D USING(difficultyLevel)
                                    """)

                        rows = cur.fetchall()
                        print("")
                        for row in rows:
                            print(row)
                    case 4:
                        print("(Warning use first Capital letter !")
                        name=input("Enter hiker's firstName : ")
                        lname=input("Enter hiker's lastName : ")                        
                        print("")
                        cur = conn.cursor()
                        cur.execute("""
                                   SELECT journeyName,journeyLocation
                                   FROM Hikes H JOIN Journeys J USING(journeyId) JOIN Users U USING(userId)
                                   WHERE userFirstName=? and userLastName= ?
                                    """,[name,lname])

                        rows = cur.fetchall()
                        print("")
                        for row in rows:
                            print(row)
                    case 5:
                        cur = conn.cursor()
                        cur.execute("""
                                   WITH TMP AS(
                                   SELECT journeyId,COUNT(userId) AS N
                                   FROM Hikes
                                   GROUP BY journeyId
                                   ),TMP2 AS(
                                   SELECT MAX(N) AS high
                                   FROM TMP
                                   )
                                   SELECT journeyLocation,high
                                   FROM TMP2 T2 JOIN TMP T1 ON(T2.high=T1.N) JOIN Journeys USING (journeyId)
                                    """)

                        rows = cur.fetchall()
                        print("")
                        for row in rows:
                            print(row)
                    case 6:
                          DML.select_all_journeys(conn)
                    case 7:
                          DML.select_all_hikes(conn)
                    case _:
                        print("Ouups,option not mentionned in main menu!")

def  upDownVote_Menu(conn):
      while (True):
                print("*****SELECT upvotes & downvotes MENU*****")
                print("     1-post title and post body of the most upvoted post")
                print("     2-full name of user who have upvoted the most")
                print("     3-full name of user who have downvoted the most")
                print("     4-all upvotes")
                print("     5-all downvotes")
                print("     6-QUIT")

               
                
                subOption=int(input("Enter next option for SELECT upvotes & downvotes menu: "))
                match subOption:
                    case 6:
                        break
                    case 1:
                        cur = conn.cursor()
                        cur.execute("""
                                   WITH TMP AS(
                                   SELECT MAX(votes) AS N
                                   FROM VotesView
                                   )
                                   SELECT postTitle,postBody ,userFirstName,userLastName,votes
                                   FROM VotesView Vo JOIN TMP T ON(Vo.votes=T.N) JOIN Posts USING(postId) JOIN Users U USING(userId)
                                   WHERE votes=N
                                   
                                    """)

                        rows = cur.fetchall()

                        for row in rows:
                            print(row)
                    case 2:
                        cur = conn.cursor()
                        cur.execute("""
                                   WITH TMP AS(
                                   SELECT userId,COUNT(postId) AS N
                                   FROM Upvotes
                                   GROUP BY userId
                                   ),TMP2 AS(
                                    SELECT MAX(N) AS maxi
                                    FROM TMP
                                   )
                                   SELECT userFirstName,userLastName,maxi
                                   FROM TMP T JOIN TMP2 T2 ON(T.N=T2.maxi) JOIN Users U USING(userId)
                                  
                                   
                                    """)

                        rows = cur.fetchall()

                        for row in rows:
                            print(row)
                    case 3:
                        cur = conn.cursor()
                        cur.execute("""
                                    WITH TMP AS(
                                   SELECT userId,COUNT(postId) AS N
                                   FROM Downvotes
                                   GROUP BY userId
                                   ),TMP2 AS(
                                    SELECT MAX(N) AS maxi
                                    FROM TMP
                                   )
                                   SELECT userFirstName,userLastName,maxi
                                   FROM TMP T JOIN TMP2 T2 ON(T.N=T2.maxi) JOIN Users U USING(userId)
                                  
                                   
                                    """)

                        rows = cur.fetchall()

                        for row in rows:
                            print(row)
                    case 4:
                         DML.select_all_upvotes(conn)
                    case 5:
                         DML.select_all_downvotes(conn)

                    case _:
                        print("Ouups,option not mentionned in main menu!")
     

def insertMenu(conn):
        while (True):
                print("*****INSERT REQUESTS MENU*****")
                print("     1-user")
                print("     2-post")
                print("     3-comment")
                print("     4-journey")
                print("     5-hike")
                print("     6-upvote")
                print("     7-downvote") 
                print("     8-QUIT") 
                
                subOption=int(input("Enter next option for INSERT REQUEST: "))
                match subOption:
                    case 8:
                        break
                    case 1:
                        DML.insert_user(conn)
                    case 2:
                        DML.insert_post(conn)
                    case 3:
                        DML.insert_comment(conn)
                    case 4:
                        DML.insert_journey(conn)
                    case 5:
                        DML.insert_hike(conn)
                    case 6:
                        DML.upvote_post(conn)
                    case 7:
                        DML.downvote_post(conn)
                    case _:
                        print("Ouups,option not mentionned in main menu!")

def updateMenu(conn):
    while(True):
        print("*****UPDATE REQUESTS MENU*****")
        print("     1-user")
        print("     2-post")
        print("     3-comment")
        print("     4-journey")
        print("     5-QUIT")

        subOption=int(input("Enter next option for UPDATE REQUEST: "))
        match subOption:
            case 5:
                break
            case 1:
                DML.update_user(conn)
            case 2:
                DML.update_post(conn)
            case 3:
                DML.update_comment(conn)
            case 4:
                DML.update_journey(conn)
            
            case _:
                print("Ouups,option not mentionned in main menu!")


def selectMenu(conn):
    while(True):
        print("*****SELECT REQUESTS MENU*****")
        print("     1-users")
        print("     2-posts")
        print("     3-comments")
        print("     4-journeys & hikes")
        print("     5-upvotes & downvotes")
        print("     6-QUIT") 
    

        subOption=int(input("Enter next option for SELECT  REQUEST: "))
        match subOption:
            case 6:
                break
            case 1:
                usersMenu(conn)
            case 2:
                postsMenu(conn)
            case 3:
                commentsMenu(conn)
            case 4:
                journeys_Hikes_Menu(conn)
            case 5:
                upDownVote_Menu(conn)
            case _:
                print("Ouups,option not mentionned in main menu!")

def deleteMenu(conn):
     while (True):
                print("*****DELETE REQUESTS MENU*****")
                print("     1-user")
                print("     2-post")
                print("     3-comment")
                print("     4-QUIT")
                
                
                subOption=int(input("Enter next option for DELETE REQUEST: "))
                match subOption:
                    case 4:
                        break
                    case 1:
                        DML.delete_user(conn)
                    case 2:
                        DML.delete_post(conn)
                    case 3:
                        DML.delete_comment(conn)
                    case _:
                        print("Ouups,option not mentionned in main menu!")