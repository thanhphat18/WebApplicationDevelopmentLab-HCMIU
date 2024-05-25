<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>
    
    <!-- Template for the root element -->
    <xsl:template match="/">
        <html>
            <head>
                <title>WebBook Collection</title>
            </head>
            <body>
                <h1>WebBook Collection</h1>
                <table border="1">
                    <tr>
                        <th>Title</th>
                        <th>ISBN</th>
                        <th>Author</th>
                        <th>Publisher</th>
                        <th>Publication Date</th>
                        <th>Price</th>
                    </tr>
                    <!-- Apply templates to each book -->
                    <xsl:for-each select="WebBook/book">
                        <tr>
                            <td><xsl:value-of select="title"/></td>
                            <td><xsl:value-of select="isbn"/></td>
                            <td><xsl:value-of select="author"/></td>
                            <td><xsl:value-of select="publisher"/></td>
                            <td><xsl:value-of select="publicationdate"/></td>
                            <td><xsl:value-of select="price"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
