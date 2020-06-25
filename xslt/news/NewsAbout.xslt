<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="about-wrapper" setbackground="/Data/Sites/1/media/home/h-1/background.png">
            <div class="container">
                <xsl:apply-templates select="/ZoneList/Zone[1]" mode="Zone1"></xsl:apply-templates>
            </div>
        </section>
        <section class="about">
            <div class="container">
                <xsl:apply-templates select="/ZoneList/Zone" mode="Zone2"></xsl:apply-templates>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="Zone" mode="Zone1">
        <div class="main-title">
            <h2><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h2>
        </div>
        <div class="content">
            <xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
        </div>
        <div class="row box-right">
            <div class="col-lg-4">
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
            <div class="col-lg-8">
                <xsl:apply-templates select="News" mode="Zone1-News"></xsl:apply-templates>
                
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="Zone1-News">
        <div class="box-wrapper">
            <div class="title">
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
                    <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                </a>
                <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
            </div>
            <div class="content-wrapper">
                <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
            </div>
        </div>
    </xsl:template>
    
    <xsl:template match="Zone" mode="Zone2">
        <xsl:if test="position()&gt;1">
            <xsl:apply-templates select="News" mode="Zone2-News"></xsl:apply-templates>
            
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="Zone2-News">
        <div class="row box-wrapper">
            <div class="col-lg-6 box-first">
                <div class="main-title">
                    <h2><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of><xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of></h2>
                </div>
                <div class="content">
                    <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
                </div>
            </div>
            <div class="col-lg-6 box-last">
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