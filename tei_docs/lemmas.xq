<ul>
{
for $lemmas in //entry/@id
return <li><a href="glossaire.xml#{data($lemmas)}">{data($lemmas)}</a></li>
}
</ul>