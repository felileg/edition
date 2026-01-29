# Requêtes XPath

Dans un document comme celui-ci, le principal intérêt de *XPath* consiste en la création automatisée d'indexs et de renvois. Après plusieurs prototypes, une seule requête  a été retenue. Celle-ci récupère chaque **lemme patois** (la forme canonique du mot contenu dans `<form type="lemma">`) en l'associant à son **lemme français** correspondant (l'ID de l'entrée, obtenu en remontant dans l'arborescence depuis la forme en question) :

```
$lemmepat = //entry/form/form
$lemmefr = $lemmepat/../../@id
```
Un peu de mise en forme permet d'obtenir une liste à puces présentant la forme patoise, l'équivalent en français entre parenthèses et, surtout, un lien vers l'entrée correspondante :

```
<ul>
	{
		for $lemmepat in //entry/form/form
		for $lemmefr in $lemmepat/../../@id
		return
			<li>
				<a href="glossaire.xml#{data($lemmefr)}"><em lang="patois">{data($lemmepat)}</em> ({data($lemmefr)})</a>
			</li>
	}
</ul>
```
Pour le moment, seuls les titres des entrées sont explicitement balisés. Si le balisage était affiné au niveau des mots présents dans les nombreux exemples, on pourrait facilement générer un index de chaque occurrence de chaque mot dans l'ensemble du document.