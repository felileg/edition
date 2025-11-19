# Documentation
## Problématique
Édition d'une partie d'un livre de comptes du 17ᵉ siècle de la Bourgeoisie de Neuchâtel.

L'original est très difficile à déchiffrer, puisqu'il s'agit d'un document purement utilitaire dont la conservation est accidentelle. L'écriture est donc parfois peu soignée et comporte un très grand nombre d'abréviations à expliciter. Une autre difficulté est la mention omniprésente de différentes unités monétaires, qu'il s'agisse de monnaies réelles ou de ce qu'on appelle des *monnaies de compte*.

Le principe de l'édition consistera en l'explicitation de la structure des documents, le développement des abréviations et le renvoi vers un index des monnaies, personnages et titres mentionnés. 
Le véritable enjeu est donc de rendre **accessible** ce texte pour donner un aperçu immersif des pratiques documentaires et de la vie neuchâteloise au 17ᵉ siècle.

## Structure et éléments mobilisés
### Structure générale
|Notion à baliser|Élément TEI|
|-|-|
|Titre|`title`|
|Entrée journalière|`p` avec *type* (à définir), sauf si balise plus adaptée|
|Compte et date|idem|
|Saut de ligne dans le document originale|`lb`|
|Saut de page dans le document original|`pb` avec *facs*|

### Éléments de mise en forme
|Notion à baliser|Élément TEI|
|-|-|
|Scripteur|attribut *hand* sur la partie concernée (probablement toute la `div`, `hi` si rajout occasionnel)|
|Rature|`del` éventuellement combinable avec `unclear` ou `gap`|
|Incertain|`unclear` avec hypothèse de transcription dedans|
|Illisible|`gap`|
|Abréviation|`abbr`, avec attribut à trouver pour l'expansion des abréviations (*title* est invalide)|

### Éléments dans le texte
|Notion à baliser|Élément TEI|
|-|-|
|Personnes|`person`|
|Monnaies|`?`|