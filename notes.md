# Dépot GitHub Édition
- Dossier *documentation*
	- Schéma conceptuel de l'édition
		- Qu'est-ce que l'on veut communiquer, but de l'édition
		- Structure
		- Choix éditoriaux
- Dossier *docs*
	- Page d'accueil
	- Éditions
	- Index (partiellement automatique)

# TEI

Il faut obligatoirement une mention vers un espace de nom (document.xsd)

La balise de base d'un document TEI est `TEI`. On peut regrouper ces documents `TEI` dans un méga document dont la racine est `teiCorpus`. Un document TEI contient un `teiHeader` et un `text`. `text` contient forcément `body` qui contient au minimum un `p`.
Dans le `teiHeader` on indique l'origine du document, et les différents documents créées à partir de l'original (notamment la transcription et l'édition TEI elle même).

## Header
### fileDesc
#### titleStmt
Titre
#### publicationStmt
Description de notre transcription
#### sourceDesc
Source du document original