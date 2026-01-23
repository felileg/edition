# Requêtes XPath

```
<ul>
	{
		for $lemmepat in //entry/form/form
		for $lemmepatid in $lemmepat/../../@id
		return
			<li>
				<a href="{data($lemmepatid)}">{data($lemmepat)}</a>
			</li>
	}
</ul>
```

```
<ul>
	{
		for $lemmefr in //entry/@id
		return
			<li>
				<a href="glossaire.xml#{data($lemmefr)}">{data($lemmefr)}</a>
			</li>
	}
</ul>
```