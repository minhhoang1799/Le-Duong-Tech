<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="commercial-wrapper">
            <div class="container">
                <xsl:apply-templates select="/ZoneList/Zone[IsActive='true']"></xsl:apply-templates>
                
            </div>
        </section>
    </xsl:template>
    <xsl:template match="Zone">
        <div class="main-title">
            <h2><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h2>
        </div>
        <div class="banner">
            <img>
                <xsl:attribute name="src">
                    <xsl:value-of select="SecondImageUrl"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="alt">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
            </img>
        </div>
        <xsl:apply-templates select="News"></xsl:apply-templates>
        
    </xsl:template>
    <xsl:template match="News">
        <div class="row wrapper">
            <div class="col-lg-6">
                <div class="content-wrapper">
                    <div class="title">
                        <h3><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of><xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of></h3>
                    </div>
                    <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
                </div>
            </div>
            <div class="col-lg-6">
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
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>