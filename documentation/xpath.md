# Requêtes XPath

Après plusieurs prototypes, une seule requête *XPath* a été retenue. Celle-ci récupère chaque **lemme patois** (la forme canonique du mot contenu dans `<form type="lemma">`) en l'associant à son **lemme français** correspondant (l'ID de l'entrée, obtenu en remontant dans l'arborescence depuis la forme en question) :

```
$lemmepat in //entry/form/form
$lemmefr in $lemmepat/../../@id
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
