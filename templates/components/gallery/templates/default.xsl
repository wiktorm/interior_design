<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:php="http://php.net/xsl"
	exclude-result-prefixes="php"
>
	<xsl:output method="html" encoding="utf-8" indent="no" />

	<xsl:template match="/component">
		<div class="columns gallery">
			<xsl:apply-templates select="data/image" />
		</div>
	</xsl:template>

	<xsl:template match="image">
		<div class="column one-third">
			<div class="gallery-item">
				<a href="{link}"><img src="{@src}" /></a>
				<h4 class="caption"><xsl:value-of select="caption" disable-output-escaping="yes" /></h4>
			</div>
		</div>
	</xsl:template>

</xsl:stylesheet>
