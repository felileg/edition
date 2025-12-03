# Édition XML-TEI du *Glossaire de Saint-Brais* de Robert Jolidon
## Le document
Le *glossaire de Saint-Brais* est l'un des travaux majeurs du dialectologue [Robert Jolidon](https://aspaju.unine.ch/jolidon/). Entre 1946 et 1950, celui-ci recueilli le lexique de son village natal sur plusieurs milliers de fiches papier. Il s'agit du seul ouvrage de ce genre concernant le patois jurassien, unique représentant de la langue d'oïl en Suisse.

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

Le patois (en graphie phonétique) doit être séparément balisé du français, pour garantir à terme la possibilité d'une conversion automatique de la graphie.

## Éléments à baliser

**Modules utilisés**: *TEI Lite* + *transcr* (module de transcription des sources primaires)

Structure :
- Ensemble du glossaire (text)
    - Paquet alphabétique de fiches (group)
        - Fiche (.... avec *facs*)
            - Titre de la fiche/lemme concerné (?)


|Élément|Balise TEI|Attribut|Remarque|
|---|---|---|---|
|Ajouts|`supplied`|`reason="editorial"`|Par exemple traductions
|Suppressions|`gap`|`reason="editorial"`|Par exemple doublons, annotations ultérieures
|Corrections|`corr`|`cert` (niveau de certitude), `resp` (ID de l'éditeur-ice responsable de la correction)|Réservé aux lapsus évidents


À investiguer:
>label

>item

>HeadLabel

>HeadItem

>term

>gloss




