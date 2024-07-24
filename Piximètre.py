from PIL import Image
# Charger l'image
path = r""
image = Image.open(path)
# Convertir l'image en format RGB si ce n'est pas déjà le cas
image = image.convert('RGB')
# Initialiser le compteur
compteur_noir = 0
# Parcourir chaque pixel de l'image
for x in range(image.width):
    for y in range(image.height):
        # Obtenir la valeur du pixel
        pixel = image.getpixel((x, y))
        
        # Vérifier si le pixel est noir
        if pixel == (0, 0, 0):
            compteur_noir += 1
print(f"Nombre de pixels noirs dans l'image : {compteur_noir}")
