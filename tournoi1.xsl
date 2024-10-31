<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">
    <xsl:template match="/">
        <html>
            <head>
                <style>
                    table{
                        border-collapse:collapse;
                        width:100%;
                    }
                    th,
                    td{
                        border:1px solid black;
                        padding:8px;
                        text-align:center;
                    }
                    th{
                        background-color:#d3d3d3;
                    }</style>
            </head>
            <body>
                <table>
                    <thead>
                        <th>Match</th>
                        <th>Date</th>
                        <th>Score</th>
                    </thead>
                    <tbody>
                        <xsl:for-each select="tournoi/match">
                            <tr>
                                <td>
                                    <xsl:value-of select="equipe[1]/@nom"/>
                                    <xsl:text>-</xsl:text>
                                    <xsl:value-of select="equipe[2]/@nom"/>
                                </td>
                                <td>
                                    <xsl:value-of select="@date"/>
                                    <xsl:text>-</xsl:text>
                                    <xsl:value-of select="@heure"/>
                                </td>
                                <td>
                                    <xsl:value-of select="equipe[1]/@score"/>
                                    <xsl:text>-</xsl:text>
                                    <xsl:value-of select="equipe[2]/@score"/>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>

    </xsl:template>

</xsl:stylesheet>
