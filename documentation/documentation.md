# Édition XML-TEI du *Glossaire de Saint-Brais* de Robert Jolidon
## Le document
Le *glossaire de Saint-Brais* est l'un des travaux majeurs du dialectologue [Robert Jolidon](https://diju.ch/f/notices/detail/1004040-jolidon-robert). Entre 1946 et 1950, celui-ci recueilli le lexique de son village natal sur plusieurs milliers de fiches papier. Il s'agit du seul ouvrage de ce genre concernant le patois jurassien, unique représentant de la langue d'oïl en Suisse.

Malheureusement, Robert Jolidon décède subitement en 1953. Son glossaire, destiné à être imprimé en un volume, est resté sous la forme d'un fichier manuscrit:
|![La boite contenant le fichier](images/fichier2.jpg)|![Un des paquets de fiches](images/paquet2.jpg)|![La fiche "autour"](images/fiche_autour.png)
|---|---|---|
|Le carton contenant l'entièreté du fichier|Un des paquets de fiches|Une des fiches|

## Les fiches

Voici la structure typique d'une fiche:
![Structure typique d'une fiche](images/structure.png)

Malheureusement, toutes les fiches ne sont pas aussi stéréotypées. Par exemple:
![Fiche "autour"](images/autour.png)

## Enjeux d'un balisage structuré

En l'état actuel, une telle source est absolument inaccessible, pour les raisons suivantes

1. **Document manuscrit et inachevé**

De nombreuses fiches demandent des **ajouts** ou des **suppressions**. Un bon balisage permet de conserver la version originale et la version éditée.

2. **Structure complexe pas toujours régulière**

Les éléments doivent être reclassés et réordonnés.

3. **Pas d'index ou de renvois**

Les différents éléments doivent être balisés pour pouvoir faire l'objet de recherches ou d'autres opérations plus complexes.

4. **Graphie phonétique réservée aux initiés**

Le patois (en graphie phonétique) doit être séparément balisé du français, pour réserver à terme la possibilité d'une conversion automatique de la graphie.

## Éléments à baliser

### Modules TEI utilisés
- *TEI Lite* comme base
- Module [dictionnaires](https://www.tei-c.org/release/doc/tei-p5-doc/en/html/DI.html)
- Quelques éléments du module de [transcription des sources primaires](https://www.tei-c.org/release/doc/tei-p5-doc/en/html/PH.html)

### Éléments de structure

**Hiérarchie** :
- `<div type="alpha" xml:id="(lettres traitées)">` : paquet alphabétique de fiches
	- `<entry xml:id="(lemme)" facs="(scan de l'original)">` : entrée = regroupe toutes les informations au sujet du mot traité.
		- `<form>` : regroupe les différentes formes et infos grammaticales.
			- `<form type="lemma" xml:lang="patois">` : forme canonique du mot en patois = **titre**.
			- `<gramGrp>` : **informations grammaticales**.
				- `<usg type="colloc" xml:lang="patois">` : mot en association récurrente avec le lemme. *Usage typique : les déterminants mentionnés pour préciser le genre ou la liaison*
				- `<pos>` : catégorie grammaticale.
				- `<gen>` : genre.
				- `<number>` : nombre.
				- etc.
		- `<usg>` : informations sur l'usage = **autres remarques et précisions techniques**
		- `<cit>` : citations de l'*Atlas Linguistique de la France* (ALF), éventuellement d'autres ouvrages
			- `<bibl>` : ALF + numéro de la carte.
			- Pour le moment, la forme linguistique n'est pas recopiée. Elle pourrait l'être à l'aide de `<form>`.
		- `<etym>` : étymologie.
		- `<sense>` : regroupe ce qui touche à la **traduction**, **définition** et **exemples** du mot.
			- `<def>` : définition ou équivalent français.
			- `<note type="example">` : regroupe les exemples, leurs traductions et leurs explications.
				- `<q xml:lang="patois">` : **exemple en patois**
		- `<re>` : sous-entrée (par exemple dérivé, composé)

**Utilisables à plusieurs niveaux** :
- `<xr>` : renvoi vers une autre entrée.
- `<note>` : une annotation diverse ne rentrant dans aucune des catégorie précédente.
- `<oRef/>` : abréviation dans la définition du mot en question (généralement rendu par ~)


### Éléments éditoriaux

|Élément|Balise TEI|Attribut|Remarque|
|---|---|---|---|
|Ajouts|`supplied`|`reason="editorial"`, `cert` (niveau de certitude)|Par exemple traductions
|Suppressions|`gap`|`reason="editorial"`|Par exemple doublons, annotations ultérieures
|Corrections|`corr`|`cert` (niveau de certitude)|Réservé aux lapsus évidents
|Incertitudes|`unclear`|`cert` (niveau de certitude)|Parties physiquement illisibles ou douteuses

**Notice** : pour des raisons d'efficacité évidentes, les balise `<supplied>` et `<gap>` ne sont utilisées que lorsque du **contenu** est réellement créé ou supprimé, par exemple par l'ajout de traductions. Cela ne concerne donc pas le développement des abréviations, la normalisation de la typographie, les légères reformulations, la réorganisation des éléments, etc., qui sont laissées à la compétence de l'éditeur·ice.