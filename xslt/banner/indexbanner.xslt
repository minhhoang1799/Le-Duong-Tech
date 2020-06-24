<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="home-banner">
				<div class="swiper-container">
					<div class="swiper-wrapper">
                        <xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>
						
					</div>
				</div>
			</section>
    </xsl:template>
    <xsl:template match="Banner">
        <div class="swiper-slide"><a href="#">
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
                <div class="box-wrapper">
                    <div class="title">
                        <h2><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h2>
                    </div>
                    <div class="content">
                        <xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
                    </div>
                    <div class="button">
                        <a href="#">
                                <xsl:attribute name="href">
                                    <xsl:value-of select="Url"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="title">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="target">
                                    <xsl:value-of select="Target"></xsl:value-of>
                                </xsl:attribute>
                        xem thêm</a>
                        <em class="lnr lnr-arrow-right"></em></div>
                        </div>
                </a>
        </div>
    </xsl:template>
</xsl:stylesheet>