<xsl:template name="remove_br">
 <xsl:param name="from"/>
 <xsl:variable name="var_1">
  <xsl:call-template name="replace">
    <xsl:with-param name="string" select="$from"/>
    <xsl:with-param name="needle" select="'&lt;br/&gt; &#xA;'"/>
    <xsl:with-param name="with" select='"&#10;"'/>
  </xsl:call-template>
 </xsl:variable>
 <xsl:variable name="var_2">
  <xsl:call-template name="replace">
    <xsl:with-param name="string" select="$var_1"/>
    <xsl:with-param name="needle" select="'&lt;br/&gt;&#xA;'"/>
    <xsl:with-param name="with" select='"&#10;"'/>
  </xsl:call-template>
 </xsl:variable>
  <xsl:variable name="var_3">
  <xsl:call-template name="replace">
    <xsl:with-param name="string" select="$var_2"/>
    <xsl:with-param name="needle" select="'&lt;br/&gt;'"/>
    <xsl:with-param name="with" select='"&#10;"'/>
  </xsl:call-template>
 </xsl:variable>
 <xsl:value-of select="$var_3"/>
</xsl:template>
<!--I added this line-->
<!--I added this line #2-->
<!--I added this line #3-->
<!--I added this line #4-->
<xsl:template name="print_special_character">
<xsl:param name="char"/>
	<fo:inline font-size="4.0pt">
		<xsl:value-of select="$char"/>
	</fo:inline>
</xsl:template>