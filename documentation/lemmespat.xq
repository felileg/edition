<ul>
{
for $forms in //entry//form[@type='lemma']/text()
for $lemmas in //entry/@id

return <li><a href="glossaire.xml#{data($lemmas)}">{data($forms)}</a></li>
}
</ul>