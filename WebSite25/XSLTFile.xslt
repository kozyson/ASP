<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
  <xsl:template match="/">
    <html>
      <body>
        <table cellspacing="3" cellpadding="8">
          <tr bgcolor="#AAAAAA">
            <td class="heading">
              <strong>Date</strong>
            </td>
            <td class="heading">
              <strong>From</strong>
            </td>
            <td class="heading">
              <strong>Subject</strong>
            </td>
          </tr>
          <xsl:for-each select="messages/message">
            <tr bgcolor="#DDDDDD">
              <td width="25%" valign="top">
                <xsl:value-of select="date"/>
              </td>
              <td width="20%" valign="top">
                <xsl:value-of select="from"/>
              </td>
              <td width="55%" valign="top">
                <strong>
                  <xsl:value-of select="subject"/>
                </strong>
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
