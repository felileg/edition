# Édition XML-TEI
## Démarche générale
Édition d'une partie d'un livre de comptes du 17^e siècle de la Bourgeoisie de Neuchâtel. L'original est très difficile à déchiffrer, puisqu'il s'agit d'un document purement utilitaire dont la conservation est accidentelle. L'écriture est donc parfois peu soignée et comporte un très grand nombre d'abréviations à expliciter. Une autre difficulté est la mention omniprésente de différentes unités monétaires, qu'elles soient réelles ou de compte.
## Structure et éléments mobilisés
### Structure générale
|Notion à baliser|Élément TEI|
|-|-|
|Titre|`title`|
|Entrée journalière|`div` avec *type* (à définir)|
|Compte et date|`div` avec *type* (à définir)|
|Saut de ligne dans le document originale|`lb`|
|Saut de page dans le document original|`pb` avec *facs*|

### Éléments de mise en forme
|Notion à baliser|Élément TEI|
|-|-|
|Scripteur|attribut *hand* sur la partie concernée (probablement toute la `div`, `hi` si rajout occasionnel)|
|Rature|``|
|Incertain|``|
|Illisible||
|Abréviation||

### Éléments dans le texte
|Notion à baliser|Élément TEI|
|-|-|
|Personnes||
|Monnaies||