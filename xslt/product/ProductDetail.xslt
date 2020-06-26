<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="product-detail">
            <div class="detail-wrapper">
                <div class="container">
                    <div class="title">
                        <h2>
                            <xsl:value-of select="/ProductDetail/Title" disable-output-escaping="yes"></xsl:value-of>
                            <xsl:value-of select="/ProductDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
                        </h2>
                    </div>
                    <div class="slide-gallery">
                        <div class="swiper-container gallery-top">
                            <div class="swiper-wrapper">
                                <xsl:apply-templates select="/ProductDetail/ProductImages" mode="image-top"></xsl:apply-templates>
                            </div>
                        </div>
                        <div class="swiper-container gallery-thumbs">
                            <div class="swiper-wrapper">
                                <xsl:apply-templates select="/ProductDetail/ProductImages" mode="image-bottom"></xsl:apply-templates>
                            </div>
                        </div>
                        <div class="swiper-prev">
                            <em class="lnr lnr-arrow-left"></em>
                        </div>
                        <div class="swiper-next">
                            <em class="lnr lnr-arrow-right"></em>
                        </div>
                    </div>
                    <div class="content">
                        <xsl:value-of select="/ProductDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>
                    </div>
                    <div class="button-bottom">
                        <div class="button">Xem thêm</div>
                    </div>
                </div>
            </div>
        </section>
        <section class="product-plus">
            <div class="main-title">
                <h2>sản phẩm và dịch vụ khác</h2>
            </div>
            <div class="container">
                <div class="slider">
                    <div class="swiper-container">
                        <div class="swiper-wrapper">
                            <xsl:apply-templates select="/ProductDetail/ProductOther"></xsl:apply-templates>
                        </div>
                    </div>
                    <div class="swiper-prev">
                        <em class="lnr lnr-arrow-left"></em>
                    </div>
                    <div class="swiper-next">
                        <em class="lnr lnr-arrow-right"></em>
                    </div>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="ProductImages" mode="image-top">
        <div class="swiper-slide">
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
    </xsl:template>
    <xsl:template match="ProductImages" mode="image-bottom">
        <div class="swiper-slide">
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
    </xsl:template>
    <xsl:template match="ProductOther">
        <div class="swiper-slide">
            <div class="product">
                <div class="image">
                    <a>
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <img>
                            <xsl:attribute name="src">
                                <xsl:value-of select="ImageUrl"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="alt">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                        </img>
                    </a>
                </div>
                <div class="title">
                    <a>
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                    </a>
                </div>
                <div class="content-wrapper">
                    <div class="content">
                        <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
                    </div>
                    <div class="button">
                        <a>
                            <xsl:attribute name="href">
                                <xsl:value-of select="Url"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="title">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                            Xem chi tiết
                        
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>