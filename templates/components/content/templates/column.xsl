<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:php="http://php.net/xsl"
	exclude-result-prefixes="php"
>
	<xsl:output method="html" encoding="utf-8" indent="no" />

	<xsl:template match="/component">
		<div class="column">
			<xsl:value-of select="data/text" disable-output-escaping="yes" />
		</div>
	</xsl:template>

</xsl:stylesheet>
