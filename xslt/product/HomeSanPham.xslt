<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="product-service">
            <div class="container">
                <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
                
            </div>
        </section>
    </xsl:template>
    <xsl:template match="Zone">
        <div class="main-title">
            <h2><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h2>
        </div>
        <div class="slider">
            <div class="swiper-container">
                <div class="swiper-wrapper">
                    <xsl:apply-templates select="Product"></xsl:apply-templates>
                    
                </div>
            </div>
            <div class="swiper-prev"><em class="lnr lnr-arrow-left"></em></div>
            <div class="swiper-next"><em class="lnr lnr-arrow-right"></em></div>
        </div>
    </xsl:template>
    <xsl:template match="Product">
        <div class="swiper-slide">
            <a>
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="target">
                    <xsl:value-of select="Target"></xsl:value-of>
                </xsl:attribute>
                <div class="image">
                    <img>
                        <xsl:attribute name="src">
                            <xsl:value-of select="ImageUrl"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="alt">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                    </img>
                </div>
                <div class="content">
                    <p><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></p>
                </div>
            </a>
        <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
        </div>
    </xsl:template>
</xsl:stylesheet>