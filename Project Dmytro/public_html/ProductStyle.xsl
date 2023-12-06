<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules
         syntax recommendation http://www.w3.org/TR/xslt
    -->
    <xsl:template match="/">
        <html>
            <body>
                <h2>Paintigns</h2>
                <table border="1">
                    <tr bgcolor="#9acd32">
                        <th>code</th>
                        <th>author</th>
                        <th>name</th>
                        <th>genre</th>
                        <th>createdTime</th>
                        <th>material</th>
                        <th>technique</th>
                        <th>width</th>
                        <th>height</th>
                        <th>quantity</th>
                        <th>price</th>
                    </tr>
                    <xsl:for-each select="catalog/painting">
                        <tr>
                            <td><xsl:value-of select="code" /></td>
                            <td><xsl:value-of select="author" /></td>
                            <td><xsl:value-of select="name" /></td>
                            <td><xsl:value-of select="genre" /></td>
                            <td><xsl:value-of select="createdTime" /></td>
                            <td><xsl:value-of select="material" /></td>
                            <td><xsl:value-of select="technique" /></td>
                            <td><xsl:value-of select="width" /></td>
                            <td><xsl:value-of select="height" /></td>
                            <td><xsl:value-of select="quantity" /></td>
                            <td><xsl:value-of select="price" /></td>
                        </tr>
                    </xsl:for-each>

                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>