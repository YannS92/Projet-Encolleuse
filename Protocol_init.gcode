G28 ;Initialisation à 0 des 3 axes X, Y,  Z et de la position de la seringue E
T0 	;On sélectionne la tête d'encollage E0 en tant qu'outil
M92 E400	;Défini les pas de l’axe E à 400 pas/tour de vis
G1 Z15 F200	;Montée à Z=15 à la vitesse de 200 mm/mn
G1 X45  Y15 F2000	;Déplacement à X=45mm et Y=15mm à 2000 mm/mn poser la plaque d’essai sur le plateau de l’encolleuse et aligner là sur le côté gauche et avant du plateau.;
G92 X0 Y0 Z0	;Défini la position actuelle en tant que origine des axes X,Y et Z. Cette position sera donc le point de départ de votre program. Attention à ce que le coin la plaque soit bien sous l’aiguille et qu’il y assez d’espace pour 
G1 X10 Y0 F4000	;Déplacement à X=10mm et Y=0mm à 4000 mm/mn 
G1 Z25 F300	;Déplacement à Z=0mm à 300 mm/mn  (h=0,2 mm) 
G92 E0	;Défini la position actuelle de E à 0 (définition position initiale seringue sur l’axe E)
	    ;Mettre un mouchoir sous l’aiguille.
G1 E0.5	;Avance la seringue jusqu’à E =0,5
        ;Si la colle ne sort pas augmenter la valeur de E de +0.5 jusqu’à sortie de la colle puis essuyer.   
G92 E0	;Défini la position actuelle de E à 0
G1 Z0.1	;Déplacement de Z à 0.1
;Vitesse total 6300 mm/mn 
