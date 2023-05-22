#!/usr/bin/python3

from utils import db
import menus
import DML



def main():
    # Nom de la BD à créer
    db_file = "data/hiketIt.db"
     # Créer une connexion a la BD
    conn = db.creer_connexion(db_file)

    # Remplir la BD
    print("1.We create 'hikeIt' DB  and feed it with some data")
    print("")
    db.mise_a_jour_bd(conn, "data/hiketIt_creation.sql")   
    print("TABLES CREATED SUCCESSFULLY !")
    print("")
    db.mise_a_jour_bd(conn, "data/hiketIt_insert_ok.sql")

    # START USER INTERFACE INTERACTION WITH OUR DB:

    while (True): 
        print("*********Main menu **********")
        print("1- INSERT REQUESTS")
        print("2- UPDATE REQUESTS")
        print("3 -SELECT REQUESTS")
        print("4 -DELETE REQUESTS")
        print("5 -QUIT")

        print("")
        option=int(input("Enter option: "))


        if(option==5):   #QUIT MAIN MENU
            break
        elif (option==1):  #INSERT REQUESTS FROM MAIN MENU
            menus.insertMenu(conn)
            
        elif (option==2):  #UPDATE REQUESTS FROM MAIN MENU
            menus.updateMenu(conn)
            
        elif (option==3):  #SELECT REQUESTS FROM MAIN MENU
            menus.selectMenu(conn)
        elif (option==4):  #DELETE REQUESTS FROM MAIN MENU
            menus.deleteMenu(conn)
        else: 
            print("Ouups,option not mentionned in main menu!")

    
  

   
    


  

if __name__ == "__main__":
    main()
