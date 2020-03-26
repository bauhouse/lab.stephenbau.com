<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>
<xsl:import href="../utilities/get-article.xsl"/>
<xsl:import href="../utilities/get-comments.xsl"/>

<xsl:template match="data">
	<div id="content" class="col span-9">
		<div class="col last span-9">
			<div class="col span-7 nudge-2">
				<h4>You are reading</h4>
			</div>
		</div>
		<xsl:apply-templates select="article/entry" mode="article"/>
		<div class="comments span-9">
			<xsl:apply-templates select="comments"/>
		</div>
		<div class="comments span-9">
			<div class="col span-7 nudge-2">
				<h4>Comments Closed</h4>	
				<p>Unfortunately, there are those that have decreased the value of offering a comment form on this website by abusing the privilege, so comments have been closed on this site. If you would like to engage in some thoughtful discourse, you can find me on several other social networking sites: <a href="https://twitter.com/bauhouse/">Twitter</a>, <a href="https://www.facebook.com/bauhouse">Facebook</a>, <a href="https://www.linkedin.com/in/bauhouse">LinkedIn</a>, <a href="https://plus.google.com/+StephenBau/">Google+</a>.</p>
			</div>
		</div>
	</div>
	<hr />
	<div id="sidebar" class="col last span-3">
		<xsl:call-template name="about"/>
		<!-- xsl:call-template name="twitter"/ -->
		<xsl:call-template name="category"/>
		<xsl:call-template name="tag"/>
		<xsl:call-template name="external-links"/>
	</div>
</xsl:template>

</xsl:stylesheet>