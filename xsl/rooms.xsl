<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:variable name="indexXml" select="document('../xml/index.xml')"/>
	<xsl:template match="/">
		<html>
			<head>
				<title>Rooms Catalogue</title>
				<link rel="stylesheet" type="text/css" href="../Style/catalogue-rooms.css"/>
			</head>
			<body>
				<!--Navigation bar	-->
				<header>
					<div class="navbar">
						<a href="../index.html"><b>Heaven Hotel</b></a>
						<a href="../xml/SourceCatalogues.xml"><b>Back to the Catalogues</b></a>
					</div>
					<br></br>
				</header>
				<!--The luxury rooms-->
				<div class="orizontal"><h1>President rooms</h1></div>
				<section class="main">
					<xsl:for-each select="$indexXml/heavenHotel/roomRent/rooms[@type='luxury']/room">
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
									<!--Writting the name of the bedroom with different font family	-->
									<div class="bedroom">
										<xsl:value-of select="bedroom"/><br></br>
									</div>
									<xsl:value-of select="kitchen"/><br></br>
									<!--This part shows if the room has airconditioning included or not	-->
									<xsl:choose>
											<xsl:when test="airConditioning/@id='Yes'">
												<p>Air Conditioning included</p>
											</xsl:when>
											<xsl:otherwise>
												<p>No Air Conditioning included</p>
											</xsl:otherwise>
									</xsl:choose>
									<!--This part shows the interval of hours when the room service is available	-->
									<p>Room service:<xsl:value-of select="roomsService"/></p>
									<!--Showing the website of the room with the posibility to open the in a new page
									(this website will be used for all the rooms as I don´t remeber where I coppied the images from) 	-->
									<xsl:element name="a">
										<xsl:attribute name="href">http://
											<xsl:value-of select="imagen/@pagina"/>
										</xsl:attribute>
										<xsl:attribute name="target">_blank</xsl:attribute>
										<xsl:value-of select="imagen/@pagina"/>
									</xsl:element><br></br>
									<!--Showing the price-->
									<xsl:value-of select="price"/> €/night<br></br>
									<!--Showing the price together with the VAT	-->
									<xsl:value-of select="format-number(price*../../../VAT, '#.00')"/>€/night (VAT included)<br></br>
									<!--A button that shows the discount	-->
									<xsl:element name="button">
										<xsl:attribute name="class">button</xsl:attribute>
										-<xsl:value-of select="format-number(discount*100, '#.')"/>%
									</xsl:element>
									<!--A button that shows the price after applying VAT and the discount	-->
									<xsl:element name="button">
										<xsl:attribute name="class">button</xsl:attribute>
										<xsl:value-of select="format-number(price*../../../VAT, '#.00')-format-number(price*../../../VAT*discount, '#.00')"/>€
									</xsl:element>
								</div>
							</div>
						</div>
					</xsl:for-each>
				</section>
				<!--The business room type-->
				<div class="orizontal"><h1>Standard rooms</h1></div>
				<section class="main">
					<xsl:for-each select="$indexXml/heavenHotel/roomRent/rooms[@type='standard']/room">
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
									<!--Writting the name of the bedroom with different font family	-->
									<div class="bedroom">
										<xsl:value-of select="bedroom"/><br></br>
									</div>
									<xsl:value-of select="kitchen"/><br></br>
									<!--This part shows if the room has airconditioning included or not	-->
									<xsl:choose>
											<xsl:when test="airConditioning/@id=Yes">
												<p>Air Conditioning included</p>
											</xsl:when>
											<xsl:otherwise>
												<p>No Air Conditioning included</p>
											</xsl:otherwise>
									</xsl:choose>
									<p>Room service:<xsl:value-of select="roomsService"/></p>
									<!--Showing the website of the room with the posibility to open the in a new page
									(this website will be used for all the rooms as I don´t remeber where I coppied the images from) 	-->
									<xsl:element name="a">
										<xsl:attribute name="href">http://
											<xsl:value-of select="imagen/@pagina"/>
										</xsl:attribute>
										<xsl:attribute name="target">_blank</xsl:attribute>
										<xsl:value-of select="imagen/@pagina"/>
									</xsl:element><br></br>
									<!--Showing the price-->
									<xsl:value-of select="price"/> €/night<br></br>
									<!--Showing the price together with the VAT	-->
									<xsl:value-of select="format-number(price*../../../VAT, '#.00')"/>€/night (VAT included)<br></br>
									<!--A button that shows the discount	-->
									<xsl:element name="button">
										<xsl:attribute name="class">button</xsl:attribute>
										-<xsl:value-of select="format-number(discount*100, '#.')"/>%
									</xsl:element>
									<!--A button that shows the price after applying VAT and the discount	-->
									<xsl:element name="button">
										<xsl:attribute name="class">button</xsl:attribute>
										<xsl:value-of select="format-number(price*../../../VAT, '#.00')-format-number(price*../../../VAT*discount, '#.00')"/>€
									</xsl:element>
								</div>
							</div>
						</div>
					</xsl:for-each>
				</section>
				<!--The economy rooms type-->
				<div class="orizontal"><h1>Economy rooms</h1></div>
				<section class="main">
					<xsl:for-each select="$indexXml/heavenHotel/roomRent/rooms[@type='economy']/room">
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
									<!--Writting the name of the bedroom with different font family	-->
									<div class="bedroom">
										<xsl:value-of select="bedroom"/><br></br>
									</div>
									<xsl:value-of select="kitchen"/><br></br>
									<!--This part shows if the room has airconditioning included or not	-->
									<xsl:choose>
											<xsl:when test="airConditioning/@id=Yes">
												<p>Air Conditioning included</p>
											</xsl:when>
											<xsl:otherwise>
												<p>No Air Conditioning included</p>
											</xsl:otherwise>
									</xsl:choose>
									<p>Room service:<xsl:value-of select="roomsService"/></p>
									<!--Showing the website of the room with the posibility to open the in a new page
									(this website will be used for all the rooms as I don´t remeber where I coppied the images from) 	-->
									<xsl:element name="a">
										<xsl:attribute name="href">http://
											<xsl:value-of select="imagen/@pagina"/>
										</xsl:attribute>
										<xsl:attribute name="target">_blank</xsl:attribute>
										<xsl:value-of select="imagen/@pagina"/>
									</xsl:element><br></br>
									<!--Showing the price-->
									<xsl:value-of select="price"/> €/night<br></br>
									<!--Showing the price together with the VAT	-->
									<xsl:value-of select="format-number(price*../../../VAT, '#.00')"/>€/night (VAT included)<br></br>
									<!--A button that shows the discount	-->
									<xsl:element name="button">
										<xsl:attribute name="class">button</xsl:attribute>
										-<xsl:value-of select="format-number(discount*100, '#.')"/>%
									</xsl:element>
									<!--A button that shows the price after applying VAT and the discount	-->
									<xsl:element name="button">
										<xsl:attribute name="class">button</xsl:attribute>
										<xsl:value-of select="format-number(price*../../../VAT, '#.00')-format-number(price*../../../VAT*discount, '#.0')"/>€
									</xsl:element>
								</div>
							</div>
						</div>
					</xsl:for-each>
				</section>
			</body> 
			<footer>
				<xsl:value-of select="count($indexXml//room)"/> products selected
				<p>Made by Balica Irina</p>
			</footer>
		</html>
	</xsl:template>
</xsl:stylesheet>