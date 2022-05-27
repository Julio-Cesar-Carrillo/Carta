<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" doctype-system="about:legacy-compact" />
    
    <xsl:template match="/">
    <html lang="en">

    <head>
        <meta charset="UTF-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <link rel="stylesheet" href="css/estilos.css"/>
        <script src="js/navbar.js"></script>
        <link rel="icon" type="image/png" href="img/koi2.png"/>
        <script src="js/font_awe.js"></script>
        <title>Restaurante</title>
    </head>
    <body>
        <section>
        <div>
            <div class="header"></div>
        </div>
        </section>
    
        <section id="entrantes">
        <div class="row">
            <div class="one-column">
                <h1> ENTRANTES </h1>
            </div>
        </div>

        <div class="row centrar">
        <div class="margen abajo">
            
            <xsl:for-each select="menu/Entrantes">
            <div class="four-column">
                <div class="img-box">
                <xsl:element name="img">
                    <xsl:attribute name="src">
                        <xsl:value-of select="imagen/@ruta"/>
                    </xsl:attribute>
                </xsl:element>
                </div>

                <div class="txt">
                    <div class="contenido">
                        <p><xsl:value-of select="Ingredientes"/></p>
                        <p><xsl:value-of select="calorias"/> cal</p>
                        
                    </div>
                </div>
                <div class="nom-pre">
                    <h3><xsl:value-of select="nombre"/></h3>
                    <p><xsl:value-of select="descripcion"/></p>
                    <p><xsl:value-of select="precio"/>€</p>
                </div>
            </div>
            
            </xsl:for-each>
            
        </div>
        </div>
        </section>

        <section id="primeros">
        <div class="one-column">
            <h1> PRIMEROS </h1>
        </div>
        
        <div class="row centrar">
        <div class="margen abajo">
            <xsl:for-each select="menu/Primeros">
            <div class="four-column">
                <div class="img-box">
                <xsl:element name="img">
                    <xsl:attribute name="src">
                        <xsl:value-of select="imagen/@ruta"/>
                    </xsl:attribute>
                </xsl:element>
                </div>

                <div class="txt">
                    <div class="contenido">
                        <p><xsl:value-of select="Ingredientes"/></p>
                        <p><xsl:value-of select="calorias"/> cal</p>
                    </div>
                </div>
                
                <div class="nom-pre">
                    <h3><xsl:value-of select="nombre"/></h3>
                    <p><xsl:value-of select="descripcion"/></p>
                    <p><xsl:value-of select="precio"/>€</p>
                </div>
            </div>
            </xsl:for-each>
        </div>
        </div>
        </section>
        
        <section id="segundos">
        <div class="row">
            <div class="one-column">
                <h1> SEGUNDOS </h1>
            </div>
        </div>

        <div class="row centrar">
        <div class="margen abajo">
            <xsl:for-each select="menu/Segundos">
            <div class="four-column">
                <div class="img-box">
                <xsl:element name="img">
                    <xsl:attribute name="src">
                        <xsl:value-of select="imagen/@ruta"/>
                    </xsl:attribute>
                </xsl:element>
                </div>

                <div class="txt">
                    <div class="contenido">
                        <p><xsl:value-of select="Ingredientes"/></p>
                        <p><xsl:value-of select="calorias"/> cal</p>
                    </div>
                </div>
                <div class="nom-pre">
                    <h3><xsl:value-of select="nombre"/></h3>
                    <p><xsl:value-of select="descripcion"/></p>
                    <p><xsl:value-of select="precio"/>€</p>
                </div>
            </div>
            </xsl:for-each>
        </div>
        </div>
        </section>
        
        <section id="postres">
        <div class="one-column">
            <h1> POSTRES </h1>
        </div>
        
        <div class="row centrar">
        <div class="margen abajo">
            <xsl:for-each select="menu/Postres">
            <div class="four-column">
                <div class="img-box">
                <xsl:element name="img">
                    <xsl:attribute name="src">
                        <xsl:value-of select="imagen/@ruta"/>
                    </xsl:attribute>
                </xsl:element>
                </div>

                <div class="txt">
                    <div class="contenido">
                        <p><xsl:value-of select="Ingredientes"/></p>
                        <p><xsl:value-of select="calorias"/> cal</p>
                    </div>
                </div>
                <div class="nom-pre">
                    <h3><xsl:value-of select="nombre"/></h3>
                    <p><xsl:value-of select="descripcion"/></p>
                    <p><xsl:value-of select="precio"/>€</p>
                </div>
            </div>
            </xsl:for-each>
        </div>
        </div>
        </section>
        
        <section id="bebidas">
        <div class="row">
        <div class="one-column">
            <h1> BEBIDAS </h1>
        </div>
        </div>

        <div class="row centrar">
        <div class="margen">
            <xsl:for-each select="menu/Bebidas">
            <div class="four-column">
                <div class="img-box">
                <xsl:element name="img">
                    <xsl:attribute name="src">
                        <xsl:value-of select="imagen/@ruta"/>
                    </xsl:attribute>
                </xsl:element>
                </div>

                <div class="txt">
                    <div class="contenido">
                        <xsl:if test="Alcohol!='NO'">
                            <p>
                                <xsl:value-of select="Alcohol"/>
                            </p>
                        </xsl:if>
                        <p><xsl:value-of select="calorias"/> cal</p>
                    </div>
                </div>
                <div class="nom-pre">
                    <h3><xsl:value-of select="nombre"/></h3>
                    <p><xsl:value-of select="descripcion"/></p>
                    <p><xsl:value-of select="precio"/>€</p>
                </div>
            </div>
            </xsl:for-each>
        </div>
        </div>
        </section>

        <section id="vinos">
            <div class="one-column">
                <h1> VINOS </h1>
            </div>
            
            <div class="row centrar">
            <div class="margen">
                <xsl:for-each select="menu/Vinos">
                <div class="four-column">
                    <div class="img-box">
                    <xsl:element name="img">
                        <xsl:attribute name="src">
                            <xsl:value-of select="imagen/@ruta"/>
                        </xsl:attribute>
                    </xsl:element>
                    </div>

                    <div class="txt">
                        <div class="contenido">
                            <p><xsl:value-of select="Graduacion"/>º</p>
                            <p><xsl:value-of select="calorias"/> cal</p>
                        </div>
                    </div>
                    <div class="nom-pre">
                        <h3><xsl:value-of select="nombre"/></h3>
                        <p><xsl:value-of select="descripcion"/></p>   
                        <p><xsl:value-of select="precio"/>€</p>                     
                    </div>
                </div>
                </xsl:for-each>
            </div>
            
            </div>
        </section>
        
    </body>
</html>
</xsl:template>
</xsl:stylesheet>