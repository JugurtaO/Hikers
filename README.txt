# Projet Python/SQLite INF403

## Groupe INM4 -L2 Informatique et MIAGE 
##Binôme: OURZIK Jugurta & MIEL Nils 


## Nos modules de notre programme d'interraction 

-DML.py (Data Manipulating Language ): représente toutes les fonctions d'insertion, de mise à jour , de suppression mais aussi de selection de données SQL.
-menus.py (Les menus: voir "Main menu"): représente tous les menus programmés et les options de chaque menu.(voir les détails dans "Main menu")



## Notre Vue : VotesView
Le but d'avoir créé cette vue est de garder un oeil sur les votes des posts qui seront dynamiquement calculé à partir de nombre de votes positifs (upvotes)
et à partir de nombre de votes négatifs (downvotes) mais aussi éviter de taper une requête complexe et très longue plusieurs fois.
Le travail consiste alors à faire une lecture de cette vue à chaque fois qu'on a besoin. (en effet ,elle agit comme une table )




## Exécution du programme 
Dans un terminal:

    # Pour Linux
    python3 main.py

    # Pour Windows
    py main.py
