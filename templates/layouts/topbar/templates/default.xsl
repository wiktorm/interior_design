<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:php="http://php.net/xsl"
	exclude-result-prefixes="php"
>
	<xsl:output method="html" encoding="utf-8" indent="no" />

	<xsl:template match="/component">
		<div class="topbar">
			<div class="container">
				<h1 class="brand"><a href="/" title="Studio Projektowe Renata Moskwa" /></h1>
				<ul class="toplinks">
					<li><a href="https://www.facebook.com/studio.projektowe.renata.moskwa"
						target="_blank" rel="nofollow" title="Facebook"><img src="/images/icons/f.png" /></a></li>
				</ul>
			</div>
		</div>
		<div class="topbar--navigation">
			<div class="container">
				<ul class="navigation">
					<xsl:apply-templates select="data/nav/item"></xsl:apply-templates>
				</ul>
				<ul class="navigation navigation-sub" style="float: left; width: 500px">
				</ul>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="item">
		<li><a class="navigation--link {@style}" href="{@href}"><xsl:value-of select="." /></a></li>
	</xsl:template>

</xsl:stylesheet>
