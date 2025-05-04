<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/students">
        <html>
            <head>
                <title>Student Results</title>
                <style>
                    body { font-family: Arial, sans-serif; padding: 20px; background-color: #f8f9fa; }
                    h1 { color: #2c3e50; }
                    table { width: 100%; border-collapse: collapse; margin-top: 10px; }
                    th, td { padding: 10px; border: 1px solid #ccc; text-align: left; }
                    th { background-color: #eaeaea; }
                    .pass { background-color: #d4edda; }
                    .fail { background-color: #f8d7da; }
                </style>
            </head>
            <body>
                <h1>Student Application Results</h1>
                <table>
                    <tr>
                        <th>Roll No</th>
                        <th>Name</th>
                        <th>Marks</th>
                        <th>Status</th>
                    </tr>
                    <xsl:for-each select="student">
                        <xsl:variable name="marks" select="marks"/>
                        <tr>
                            <td><xsl:value-of select="roll"/></td>
                            <td><xsl:value-of select="name"/></td>
                            <td><xsl:value-of select="marks"/></td>
                            <xsl:choose>
                                <xsl:when test="$marks &gt;= 50">
                                    <td class="pass">Pass</td>
                                </xsl:when>
                                <xsl:otherwise>
                                    <td class="fail">Fail</td>
                                </xsl:otherwise>
                            </xsl:choose>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
