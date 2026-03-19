# Projet Flutter – Mini Jeu

## Membres du groupe
- KOUANDZI MIETTE Junior  
- OSSENI Olarewadjou Olouwatoyin Awatif  
- MIKPON Israella Allegresse Adedoyin  


## Thème choisi
Jeu avec les fruits

## Description du jeu
Nous avons développé un mini-jeu avec **Flutter** où le joueur doit cliquer sur le fruit correct parmi neuf images affichées à l’écran.  

Le principe est simple, mais le jeu devient vite captivant :  
- La couleur **verte** indique le fruit que le joueur doit trouver.  
- La couleur **rouge** recouvre les autres fruits et sert à perturber un peu la vue et la concentration du joueur.  

Le fruit à trouver est également affiché en haut de l’écran, pour que le joueur sache exactement ce qu’il doit chercher.  
Lorsque le joueur clique sur le bon fruit, il gagne **5 points** et un message de **Bravo** apparaît à l’écran. S’il se trompe, il perd des points et un message d’**Erreur** s’affiche. Pour renforcer l’interactivité, nous avons aussi ajouté des **sons** qui se déclenchent selon que la réponse est correcte ou non.  

Chaque tour du jeu fait apparaître un nouveau fruit à trouver, ce qui rend l’expérience dynamique et amusante. Les images changent de position pour que le joueur ne mémorise pas l’emplacement du fruit correct.

## Modifications réalisées
Pendant le développement, nous avons apporté plusieurs améliorations pour rendre le jeu plus complet et agréable :  
- Ajout des images de fruits (JPG, PNG et SVG) pour diversifier l’affichage.  
- Intégration de **sons** (`win.wav` et `lost.wav`) pour un retour immédiat lors d’une bonne ou mauvaise réponse.  
- Messages interactifs “Bravo” ou “Erreur” selon la réponse du joueur.  
- Un bouton **Recommencer** pour relancer le jeu facilement sans quitter l’application.  
- Amélioration des couleurs et de l’interface pour que le jeu soit plus lisible et agréable à regarder.  
- Texte clarifié et instructions plus explicites pour guider le joueur.  
- Mise à jour dynamique du score à chaque clic, avec limitation pour éviter que le score devienne négatif.  

## Difficultés rencontrées
Comme dans tout projet, nous avons rencontré quelques obstacles :  
- **Affichage des images SVG locales** : `Image.asset` ne supportait pas ce format.  
- **Position des images** : au départ, elles restaient fixes, ce qui permettait de mémoriser facilement la bonne réponse.  
- **Intégration des sons** : il fallait que le son se joue immédiatement sans délai perceptible.  
- **Gestion du Timer** : nous voulions que le jeu continue automatiquement tous les 2 secondes, tout en laissant le joueur interagir sans conflit.  

Ces difficultés nous ont forcés à chercher des solutions efficaces et à comprendre mieux Flutter et sa gestion des assets.

## Solutions et apprentissages
Pour surmonter ces problèmes, nous avons :  
- Installé et utilisé la bibliothèque **flutter_svg** pour pouvoir afficher correctement les fichiers SVG (`SvgPicture.asset`).  
- Mélangé les images à chaque nouveau tour avec `images.shuffle()` pour que la position de la bonne réponse change à chaque fois.  
- Utilisé `InkWell` pour détecter les clics et déclencher la mise à jour du score.  
- Préchargé et joué les sons de manière efficace pour un retour immédiat au joueur.  
- Amélioré la logique du score avec des protections contre les valeurs négatives.  
- Compris l’importance de configurer correctement le fichier `pubspec.yaml` pour gérer tous les assets (images et sons).  

Grâce à ces solutions, nous avons beaucoup appris sur :  
- La gestion des images et des sons dans Flutter.  
- La création d’interfaces interactives et dynamiques.  
- La mise à jour en temps réel avec `setState`.  
- La structuration d’un projet Flutter pour qu’il soit lisible et maintenable.

## Améliorations possibles
Si nous avions eu plus de temps, nous aurions aimé :  
- Ajouter un **son de fond** en boucle pour rendre le jeu plus immersif.  
- Ajouter des **animations ou effets visuels** lors des clics sur les cadres pour rendre le jeu plus vivant.  
- Ajouter un **chronomètre** pour limiter le temps de réponse et rendre le jeu plus challengeant.  
- Créer plusieurs **niveaux de difficulté**, par exemple avec plus d’images ou moins de temps pour répondre.  
- Mettre en place un **classement ou score global** pour comparer les performances des joueurs.  
- Ajouter des notifications ou encouragements pour rendre l’expérience plus motivante et ludique.  



Ce README raconte **notre expérience de développement** et montre comment nous avons résolu les problèmes rencontrés, amélioré le jeu et appris beaucoup sur Flutter. Il explique également ce que nous aurions aimé ajouter pour rendre le jeu encore plus complet.