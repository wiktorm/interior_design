<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:php="http://php.net/xsl"
	exclude-result-prefixes="php"
>
	<xsl:output method="html" encoding="utf-8" indent="no" />

	<xsl:template match="/component">
		<div class="container {data/style}">
			<div class="columns" style="margin-top: 20px">
				<xsl:value-of select="$H_SUB_COMPONENTS"
					disable-output-escaping="yes" 
				/>
			</div>
		</div>
	</xsl:template>

</xsl:stylesheet>
