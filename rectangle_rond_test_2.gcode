; --------------------------------------------------- Initialisation et positionnement ---------------------------------------------------;
G28  ; Retour à la position d'origine
G1 Z16 ;paramétrage de l'axe Z à 15 mm mais à changer avec la bonne valeur
G92 Z0 E0
G1 Z10
G4 P1500 ; Pause pour stabiliser
G1 X90 Y35 F2000
G92 X0 Y0
T0 ; je n'ai pas tellement compris mais en gros c'est un preset je crois d'après la doc à chercher !!!
M92 E4000 ;Défini les pas de l’axe E à 400 pas/tour de vis
;----------------------------------------------------------suite----------->
G92 E0
G1 Z0.2 Y10 E0.2 
G92 E0
G1 Y44 F200 E0.4
G92 E0
G2 X10 Y54 R10 F200 E0.4
G92 E0
G1 X96 F600 E0.8
G92 E0
G2 X106  Y44  R10 F600 E0.4
G92 E0
G1 Y10 F600 E0.4
G92 E0
G2 X96 Y0 R10 F600 E0.4
G92 E0
G1 X10 F600 E0.8
G92 E0
G2 X0 Y10 R10 F600 E0.4
G92 E0


;_____________________FIN_______________

G1 Z10 X-40 F2000



;POur voir comment se comporte notre système