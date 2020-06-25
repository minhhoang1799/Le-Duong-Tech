<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
  <xsl:template match="/">
    <section class="product-wrapper">
				<div class="container">
					<div class="main-title">
						<h2><xsl:value-of select="/NewsList/NewsTitle" disable-output-escaping="yes"></xsl:value-of></h2>
					</div>
					<div class="row">
						<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
					</div>
				</div>
			</section>
  </xsl:template>
  <xsl:template match="News">
    <div class="col-sm-6 col-lg-4 product">
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
                  <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
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
                      </xsl:attribute> Xem chi tiết
                    </a>
                </div>
							</div>
						</div>
  </xsl:template>
</xsl:stylesheet>