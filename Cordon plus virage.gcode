G28
G92 E0
G1 Z10 F200
G1 X50 Y15 F2000
T0 ; je n'ai pas tellement compris mais en gros c'est un preset je crois d'après la doc à chercher !!!
M92 E400 ;Défini les pas de l’axe E à 400 pas/tour de vis
G1 Z7 F200 ;Redescente à Z=0 à 200 mm/mn
G92 X0 Y0 Z0 ;La position actuelle est origine des axes X,Y et Z
; ------------------------------------ Cordon 1 e=0.4, h=0, Vx=200 pour le plan d'exp c'est la ligne 1 normalement et la on commence vraiment-----------------------------------; 
G1 Z25 F2000 ; élever la buse à Z20 pour le retour après avoir réalisé un premier cordon (essai 0) 
G1 X4 F2000 ; se repositionner au début de la ligne 
G1 Y10 Z0.8 F2000; se décaler de l’axe des Y pour réaliser un nouveau cordon et adapter le Z 
M92 E4000
G1 X4
G1 E0.8 X70 F200 ;déplacement avec les paramètre (e=0.8, Vx=200) 
G4 P1000 ; Pause pour stabiliser
G3 X70 Y15 I-0.1 J5 E0.4 F200 ; Coin arrondi en bas à droite avec comme param (e=0.8, Vx=200)
; --------------------------------------------------- cordon n°2 bas du téléphone param (e=0.4, h=0, Vx=200) --------------------------------------------------- ;
G92 E0 ; Réinitialisation de l'extrudeur
G1 Z0.8 F2000; se décaler pour adapter le Z 
M92 E4000
G1 E0.8 X75 Y30 F200 ;déplacement avec les paramètre (e=0.8, Vx=200)
G4 P1000 ; Pause pour stabiliser
G3 X75 Y150 I-5 J-0.1 E0.8 F300 ; Coin arrondi en haut à droite (e=0.8, Vx=200)
; --------------------------------------------------- cordon n°3 gauche du téléphone param (e=0.4, h=0, Vx=200) --------------------------------------------------- ;
G92 E0 ; Réinitialisation de l'extrudeur
G1 Z0.8 F2000; se décaler pour adapter le Z 
M92 E4000
G1 E0.8 X5 Y35 F200 ;déplacement avec les paramètre (e=0.8, Vx=200)
G4 P1000 ; Pause pour stabiliser
G3 X-150 Y15 I0 J-5 E0.8 F200 ; Coin arrondi en bas à droite avec comme param (e=0.8, Vx=200)
; --------------------------------------------------- cordon n°4 gauche du téléphone param (e=0.4, h=0, Vx=200) le last --------------------------------------------------- ;
G92 E0 ; Réinitialisation de l'extrudeur
G1 Z0.8 F2000; se décaler pour adapter le Z 
M92 E4000
G1 E0.8 X0 Y15 F200 ;déplacement avec les paramètre (e=0.8, Vx=200)
G4 P1000 ; Pause pour stabiliser
G3 X0 Y-10 I5 J-0.1 E0.8 F200 ; Coin arrondi en bas à gauche pour boucler le contour (e=0.8, Vx=200)
