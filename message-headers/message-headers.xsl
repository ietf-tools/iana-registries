<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:iana="http://www.iana.org/assignments"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:import href="../_support/iana-registry.xsl" />

  <xsl:template name="iana:record_header">
    <xsl:choose>
      <xsl:when test="@id = 'perm-headers' or @id = 'prov-headers'">
        <tr>
          <th>Header Field Name</th>
          <th>Template</th>
          <th>Protocol</th>
          <th>Status</th>
          <th>Trace</th>
          <th>Reference</th>
        </tr>
      </xsl:when>
      <xsl:otherwise>
        <tr>
          <th>Value</th>
          <th>Description</th>
          <th>Reference</th>
        </tr>
      </xsl:otherwise>
    </xsl:choose>
    
  </xsl:template>

  <xsl:template match="iana:record">
    <xsl:choose>
      <xsl:when test="../@id = 'perm-headers' or ../@id = 'prov-headers'">
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:apply-templates select="iana:file"/></td>
          <td><xsl:value-of select="iana:protocol"/></td>
          <td><xsl:value-of select="iana:status"/></td>
          <td><xsl:value-of select="iana:trace"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:when>
      <xsl:otherwise>
        <tr>
          <td><xsl:value-of select="iana:value"/></td>
          <td><xsl:value-of select="iana:description"/></td>
          <td><xsl:apply-templates select="iana:xref"/></td>
        </tr>
      </xsl:otherwise>
    </xsl:choose>
    
  </xsl:template>
</xsl:stylesheet>
