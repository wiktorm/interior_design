<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
	version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:php="http://php.net/xsl"
	exclude-result-prefixes="php"
>
	<xsl:output method="html"
		encoding="utf-8"
		indent="no"
	/>

	<xsl:template match="/component">
		<div class="footer" style="margin-top: 40px;">
			<div class="container">
				<div class="columns"><!-- 
					 --><div class="column two-thirds"></div><!--
					--><div class="column one-third" style="text-align: right; padding-bottom: 5px;">
						<p>
							mgr inż. arch. <span class="name">Renata Moskwa (Kowalczuk)</span><br />
							telefon: <strong>512 149 366</strong><br />
							email: info@renata-kowalczuk.eu
						</p>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>

</xsl:stylesheet>
