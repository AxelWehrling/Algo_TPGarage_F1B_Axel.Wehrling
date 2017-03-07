//Algorithme Le garage automobile
//But:Algorithme qui affiche des garages et leurs véhicules, véhicule le plus vieux etc.
//Entree: Nom garage, adresse ,modele...
//Sortie: affiche des garages et leurs véhicules, véhicule le plus vieux etc.

Programme Garage

Type
	adre=Enregistrement
		coordonnee:chaîne
		numTel:entier
		email:chaîne
	FinEnregistrement
		
Type	
	garage=Enregistrement
		nom:chaîne
		adresse:adre
		nbrVoi:entier
	FinEnregistrement
	
	
Type
	voiture=Enregistrement
		marque:chaîne
		modèle:chaîne
		energie:chaîne
		PuiFis:entier
		PuiDYN:entier
		couleur:chaîne
		option:chaîne
		anneeMod:entier
		prixMod:entier
		coteArgus:entier
		dateCircu:entier
		age:entier
		immatri:chaîne
	FinEnregistrement

Type
	TGa=Tableau[1..2] de garage
	
//BUT:entrer le nom et toutes les coordonnées des garages.
//ENTREE:Des chaîne de charactère et un entier dans un tableau de garage
//SORTIE:un tableau de garage, un entier qui donne le nombre de voiture au total.
	
Procedure CreerGarage(var TabGarage:TGa ; var nbrVoiMax:entier)

var
	i:entier

debut
	nbrVoiMax<--0
	Pour i De 1 à 2 Faire
		Ecrire("Veuillez entrer le nom du garage n°"&i&" :")
		Lire(TabGarage[i].nom)
		Ecrire("Veuillez entrer le numero de la rue, nom de la rue, code postal, ville et pays:")
		Lire(TabGarage[i].adresse.coordonnee)
		Ecrire("Veuillez entrer le numero de téléphone du garage:")
		Lire(TabGarage[i].adresse.numTel)
		Ecrire("Veuillez entrer votre adresse email:")
		Lire(TabGarage[i].adressse.email)
		Ecrire("Veuillez entrer le nombre de voiture que possède le garage:")
		Lire(TabGarage[i].nbrVoi)
		
		//Variable qui récupère le nombre de voiture au totale dans les deux garages:
		nbrVoiMax<--nbrVoiMax+TabGarage[i].nbrVoi
	FinPour
	
fin;

Procedure CreerVoiture(var nbrVoiMax:entier ; var TabVoi:Tableau[1..nbrVoiMax] de voiture)

var
	i:entier

debut
	Pour i De 1 A nbrVoiMax Faire
		Ecrire("Veuillez entrer la marque de la voiture n°"&i&":")
		Lire(TabVoi[i].marque)
		Ecrire("Veuillez entrer le modèle de la voiture n°"&i&":")*
		Lire(TabVoi[i].modèle)
		


var 
	TabVoi:Tableau[1..nbrVoiMax] de voiture
	TabGarage:TGa
	nbrVoiMax:entier
	
//Programme Principal:

DEBUT
	CreerGarage(TabGarage,nbrVoiMax)



FIN.


CE QUI EST FAIT:
-tout les types nécessaire
-procedure de création des garages

A FAIRE:
-Procedure de création des voitures
-Procedure de répartition des voitures
-Procedure d'affichage des garages et de leurs voitures
-Procedure d'affichage de la voiture la plus ancienne
-Procedure d'affichage de la moyenne des valeurs des voitures de chaque garage









