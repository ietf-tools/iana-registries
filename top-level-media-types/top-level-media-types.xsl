<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <tr>
      <th>Name</th>
      <th>Reference</th>
      <th>Registry of Subtypes</th>
      <th>Comments</th>
    </tr>
  </xsl:template>

  <xsl:template match="iana:record">
    <tr>
      <td><xsl:value-of select="iana:value"/></td>
      <td><xsl:apply-templates select="iana:xref"/></td>
      <td><xsl:apply-templates select="iana:subtypes"/></td>
      <td><xsl:value-of select="iana:comments"/></td>
    </tr>
  </xsl:template>

</xsl:stylesheet>
