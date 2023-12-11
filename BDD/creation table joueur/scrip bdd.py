import os

yMax = 24
poste = [
	"TOPLANER",
	"JUNGLER",
	"MIDLANER",
	"BOTLANER",
	"SUPPORT"
]



for x in range(5):
	for y in range(yMax):
		with open("joueurs.txt", "r", encoding = "UTF-8") as file:
			joueurs = file.read().split("\n")

		value = y+(yMax*(x))+1
		try:
			print(f"({value}, {y+1}, 'None', '{joueurs[value-1].split(';')[0].replace(' ','')}', '{joueurs[value-1].split(';')[1].split(' ')[1]}', '{joueurs[value-1].split(';')[1].split(' ')[0]}', '{poste[x]}', 'JOUEUR', 'JOUEUR'),")
		except:
			print("error")
		

os.system("pause>null")