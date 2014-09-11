<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="Students">
        <Students>
            <xsl:apply-templates select="Student"/>
        </Students>
    </xsl:template>
  <xsl:template match="Student">
    <Students>
      <xsl:attribute name="StudentId">
        <xsl:value-of select="StudentId"/>
      </xsl:attribute>
      <xsl:attribute name="firstName">
        <xsl:value-of select="firstName"/>
      </xsl:attribute>
      <xsl:attribute name="LastName">
        <xsl:value-of select="LastName"/>
      </xsl:attribute>
      <xsl:attribute name="Average">
        <xsl:value-of select="Average"/>
      </xsl:attribute>
    </Students>
  </xsl:template>
</xsl:stylesheet>
