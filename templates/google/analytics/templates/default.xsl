<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:php="http://php.net/xsl"
	exclude-result-prefixes="php"
>
	<xsl:output method="html" encoding="utf-8" indent="no" />
	
	<xsl:template match="/component">
		<xsl:if test="boolean(number(data/enabled))">
			<script type="text/javascript">
				(function(i,s,o,g,r,a,m){i["GoogleAnalyticsObject"]=r;i[r]=i[r]||function(){
				(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
				m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
				})(window,document,"script","//www.google-analytics.com/analytics.js","ga");

				ga("create", "<xsl:value-of select="data/account" />", "<xsl:value-of select="data/domain" />");
				ga("send", "pageview");
			</script>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>