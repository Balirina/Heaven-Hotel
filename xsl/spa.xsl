<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:variable name="indexXml" select="document('../xml/index.xml')"/>
	<xsl:template match="/">
		<html>
			<head>
				<title>Spa Salon Catalogue</title>
				<link rel="stylesheet" type="text/css" href="../Style/catalogue-spa.css"/>
			</head>
			<body>
				<!--Navigation bar	-->
				<header>
					<div class="navbar">
						<a href="../index.html"><b>Heaven Hotel</b></a>
						<a href="../xml/SourceCatalogues.xml"><b>Back to the Catalogues</b></a>
					</div>
					<br></br>
					<br></br>
				</header>
				<!--The main part of the page-->
				<section class="main">
					<xsl:for-each select="$indexXml/heavenHotel/spaCare/service">
						<div class="row">
							<div class="column">
								<div class="card">
									<!--insert images-->
									<xsl:element name="a">
										<xsl:attribute name="href">../Images/
											<xsl:value-of select="imagen"/>
										</xsl:attribute>
										<xsl:attribute name="target">_blank</xsl:attribute>
										<xsl:element name="img">
											<xsl:attribute name="src">../Images/
												<xsl:value-of select="imagen"/>
											</xsl:attribute>
											<xsl:attribute name="target">_blank</xsl:attribute>
										</xsl:element>
									</xsl:element>
									<br></br>
									<!-- the title shown with a diferent font family -->
									<div class="title">
										<xsl:value-of select="name"/><br></br>
									</div>
									<xsl:value-of select="description"/><br></br>
									<!-- The duration of the treatment -->
									Duration <xsl:value-of select="duration"/> hours<br></br>
									<!-- The discount that is applied to the price -->
									-<xsl:value-of select="format-number(discount*100, '#')"/>%<br></br>
									<!-- The website that can be opened in a new tab -->
									<xsl:element name="a">
										<xsl:attribute name="href">http://
											<xsl:value-of select="imagen/@pagina"/>
										</xsl:attribute>
										<xsl:attribute name="target">_blank</xsl:attribute>
										<xsl:value-of select="imagen/@pagina"/>
									</xsl:element><br></br>
									<!-- The line showing the price -->
									<xsl:value-of select="price"/>€<br></br>
									<!-- The price with the VAT-->
									<xsl:value-of select="format-number(price*../../VAT, '#.00')"/>€(VAT included)<br></br>
									<!-- The button showing the price -->
									<xsl:element name="button">
										<xsl:attribute name="class">button</xsl:attribute>
										<xsl:value-of select="format-number(price*../../VAT, '#.00')-format-number(price*../../VAT*discount, '#.00')"/>€
									</xsl:element>
								</div>
							</div>
						</div>
					</xsl:for-each>
				</section>
			</body> 
		</html>
	</xsl:template>
</xsl:stylesheet>