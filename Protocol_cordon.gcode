; Initialisation et positionnement
G28 ; Retour à la position d'origine
G1 X0 Y5 F4000 ; Retour à X=0 et avance à Y=5 (Vitesse rapide 4000mm/mn)
G1 Z0 F400 ; Descente à Z=0
G4 P1500 ; Attente de 1 seconde

; Premier cordon (bas de la coque)
G1 X3 ; Déplacement à X=3 pour essuyer la pointe de l'aiguille
G1 X0 Y10 Z3 ; Déplacement à X=0 et avance à Y=10 en position travail
G1 Z0 F300 ; Redescente à Z=0 (Vitesse 300mm/mn)
G92 E0 ; Initialisation de l’axe E à 0
G1 E0.4 X70 F400 ; Déplacement avec encollage à X=70 (longueur de la coque)
G1 X140 ; Déplacement sans encollage à X=140
G1 Z5 F300 ; Montée à z=5 pour dégager la pièce

; Deuxième cordon (côté droit de la coque)
G1 X140 Y15 F4000 ; Positionnement au début du deuxième cordon
G1 Z0 F300 ; Descente à Z=0
G92 E0 ; Initialisation de l’axe E à 0
G1 E0.4 Y85 F400 ; Déplacement avec encollage jusqu'à Y=85 (hauteur de la coque)
G1 Y95 ; Déplacement sans encollage jusqu'à Y=95
G1 Z5 F300 ; Montée à z=5 pour dégager la pièce

; Troisième cordon (haut de la coque)
G1 X140 Y95 F4000 ; Positionnement au début du troisième cordon
G1 Z0 F300 ; Descente à Z=0
G92 E0 ; Initialisation de l’axe E à 0
G1 E0.4 X70 F400 ; Déplacement avec encollage jusqu'à X=70
G1 X0 ; Déplacement sans encollage jusqu'à X=0
G1 Z5 F300 ; Montée à z=5 pour dégager la pièce

; Quatrième cordon (côté gauche de la coque)
G1 X0 Y85 F4000 ; Positionnement au début du quatrième cordon
G1 Z0 F300 ; Descente à Z=0
G92 E0 ; Initialisation de l’axe E à 0
G1 E0.4 Y15 F400 ; Déplacement avec encollage jusqu'à Y=15
G1 Y5 ; Déplacement sans encollage jusqu'à Y=5
G1 Z5 F300 ; Montée à z=5 pour dégager la pièce

; Nettoyage final
G1 X3 ; Déplacement à X=3 pour essuyer la pointe de l'aiguille
G1 Z10 ; Remonter la tête d'encollage

; Signal de fin de travail
M300 S300 P1000 ; Jouer un son (si ont peut)
M117 Travail Termine ; Afficher un message sur l'écran LCD (si ont peut)

; Fin du programme
M104 S0 ; Éteindre la tête d'encollage (si chauffée)
M140 S0 ; Éteindre le plateau chauffant (si utilisé)
M84 ; Désactiver les moteurs