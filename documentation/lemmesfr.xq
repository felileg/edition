<ul>
	{
		for $lemmefr in //entry/@id
		return
			<li>
				<a href="glossaire.xml#{data($lemmefr)}">{data($lemmefr)}</a>
			</li>
	}
</ul>