<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8" />
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Match Points</title>
                <style>
                    table {
                    border-collapse: collapse;
                    width: 100%;
                    }
                    th, td {
                    border: 1px solid black;
                    padding: 8px;
                    text-align: center;
                    }
                    th {
                    background-color: #d3d3d3;
                    }
                </style>
            </head>
            <body>
                <h2>Match Points</h2>
                <table>
                    <tr>
                        <th>Match</th>
                        <th>Equipe1</th>
                        <th>Points</th>
                        <th>Equipe2</th>
                        <th>Points</th>
                    </tr>
                    <xsl:for-each select="tournoi/match">
                        <tr>
                            <td><xsl:value-of select="position()" /></td>
                            <td><xsl:value-of select="equipe[1]/@nom" /></td>
                            <td>
                                <xsl:choose>
                                    <xsl:when test="equipe[1]/@score &gt; equipe[2]/@score">2</xsl:when>
                                    <xsl:when test="equipe[1]/@score = equipe[2]/@score">1</xsl:when>
                                    <xsl:otherwise>0</xsl:otherwise>
                                </xsl:choose>
                            </td>
                            <td><xsl:value-of select="equipe[2]/@nom" /></td>
                            <td>
                                <xsl:choose>
                                    <xsl:when test="equipe[2]/@score &gt; equipe[1]/@score">2</xsl:when>
                                    <xsl:when test="equipe[1]/@score = equipe[2]/@score">1</xsl:when>
                                    <xsl:otherwise>0</xsl:otherwise>
                                </xsl:choose>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
