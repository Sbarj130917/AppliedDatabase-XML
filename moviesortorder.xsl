<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:template match="/">
        <html>
            <body>
                <h2>Movies Information</h2>
                <table border="1">
                    <tr bgcolor="#9acd32">
                        <th align="left">TypeCode</th>
                        <th align="left">MovieTitle</th>
                        <th align="left">MovieCopies</th>
                        <th align="left">MovieCharges</th>
                        <th align="left">MovieReleaseDate</th>
                        <xsl:for-each select="moviesAndStockInformation/movie">
                            
                            <xsl:sort select="typeCode"/>
                             <xsl:sort select="movieDescription/movieCharges" order="ascending"/>
                       
                            <tr>
                                <td><xsl:value-of select="typeCode"/></td>
                                <td><xsl:value-of select="movieDescription/movieTitle"/></td>
                                <td><xsl:value-of select="movieDescription/movieCopies"/></td>
                                <td><xsl:value-of select="movieDescription/movieCharges"/></td>
                                <td><xsl:value-of select="movieDescription/movieReleaseDate"/></td> 
                            </tr>
                            </xsl:for-each>
                        </tr>
                        </table>
                </body>
            </html>
        </xsl:template>
</xsl:stylesheet>