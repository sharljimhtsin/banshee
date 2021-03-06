<?xml version="1.0" ?>
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:include href="../banshee/main.xslt" />
<xsl:include href="../banshee/alphabetize.xslt" />

<!--
//
//  Content template
//
//-->
<xsl:template match="content">
<h1>Alphabetize demo</h1>
<table class="table table-striped table-condensed">
<thead>
<tr><th>Words</th></tr>
</thead>
<tbody>
<xsl:for-each select="words/word">
<tr><td><xsl:value-of select="." /></td></tr>
</xsl:for-each>
</tbody>
</table>

<div class="right">
<xsl:apply-templates select="alphabetize" />
</div>

<div class="btn-group left">
<a href="/demos" class="btn btn-default">Back</a>
</div>
</xsl:template>

</xsl:stylesheet>
