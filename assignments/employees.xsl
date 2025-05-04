<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/company">
        <html>
            <head>
                <title>Employee Directory</title>
                <style>
                    body { font-family: Arial, sans-serif; padding: 20px; background-color: #f0f0f0; }
                    h1 { color: #2c3e50; }
                    table { width: 100%; border-collapse: collapse; }
                    th, td { padding: 10px; border: 1px solid #ccc; }
                    th { background-color: #eaeaea; }
                </style>
            </head>
            <body>
                <h1>Employee Directory</h1>
                <table>
                    <tr>
                        <th>Name</th>
                        <th>Position</th>
                        <th>Department</th>
                        <th>Salary ($)</th>
                    </tr>
                    <xsl:for-each select="employee">
                        <tr>
                            <td><xsl:value-of select="name"/></td>
                            <td><xsl:value-of select="position"/></td>
                            <td><xsl:value-of select="department"/></td>
                            <td><xsl:value-of select="salary"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
