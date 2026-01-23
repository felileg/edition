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