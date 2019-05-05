<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:variable name="indexXml" select="document('../xml/index.xml')"/>
	<xsl:template match="/">
		<html>
			<head>
				<title>Restaurant Catalogue</title>
				<link rel="stylesheet" type="text/css" href="../Style/catalogue-restaurant.css"/>
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
				<!--The main part of the page-->
				<div class="orizontal"><h1>Chicken Menu</h1></div>
				<section class="main">
					<xsl:for-each select="$indexXml/heavenHotel/restaurant/ChickenMenu/dish">
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
									<!--Showing the name of the dish wit a different font family   -->
									<div class="title">
										<xsl:value-of select="name"/><br></br>
									</div>
									<!-- Showing more information about the dishes   -->
									<xsl:value-of select="category"/><br></br>
									<xsl:value-of select="calories"/> kCal<br></br>
									<xsl:value-of select="ingredients"/><br></br>
									<!--  The site that can be opened in a new tab  -->
									<xsl:element name="a">
											<xsl:attribute name="href">http://
												<xsl:value-of select="imagen/@pagina"/>
											</xsl:attribute>
											<xsl:attribute name="target">_blank</xsl:attribute>
											<xsl:value-of select="imagen/@pagina"/>
									</xsl:element><br></br>
									<xsl:value-of select="price"/>€<br></br>	
									<!--   The button that indicates the price -->
									<xsl:element name="button">
										<xsl:attribute name="class">button</xsl:attribute>
										<xsl:value-of select="format-number(price*../../../VAT, '#.00')"/>€
									</xsl:element>
								</div>
							</div>
						</div>
					</xsl:for-each>
				</section>
					<!--second part-->
				<div class="orizontal"><h1>Vegan Menu</h1></div>
				<section class="main">
					<xsl:for-each select="$indexXml/heavenHotel/restaurant/VeganMenu/dish">
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
									<!--Showing the name of the dish wit a different font family   -->
									<xsl:value-of select="name"/><br></br>
									<!-- Showing more information about the dishes   -->
									<xsl:value-of select="category"/><br></br>
									<xsl:value-of select="calories"/> kCal<br></br>
									<xsl:value-of select="ingredients"/><br></br>
									<!--  The site that can be opened in a new tab  -->
									<xsl:element name="a">
											<xsl:attribute name="href">http://
												<xsl:value-of select="imagen/@pagina"/>
											</xsl:attribute>
											<xsl:attribute name="target">_blank</xsl:attribute>
											<xsl:value-of select="imagen/@pagina"/>
										</xsl:element><br></br>
									<xsl:value-of select="price"/>€<br></br>
									<!--   The button that indicates the price -->
									<xsl:element name="button">
										<xsl:attribute name="class">button</xsl:attribute>
										<xsl:value-of select="format-number(price*../../../VAT, '#.00')"/>€
									</xsl:element>
								</div>
							</div>
						</div>
					</xsl:for-each>
				</section>
					<!--Third Part-->
				<div class="orizontal"><h1>Salads</h1></div>
				<section class="main">
					<xsl:for-each select="$indexXml/heavenHotel/restaurant/Salads/dish">
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
									<!--Showing the name of the dish wit a different font family   -->
									<xsl:value-of select="name"/><br></br>
									<!-- Showing more information about the dishes   -->
									<xsl:value-of select="category"/><br></br>
									<xsl:value-of select="calories"/> kCal<br></br>
									<xsl:value-of select="ingredients"/><br></br>
									<!--  The site that can be opened in a new tab  -->
									<xsl:element name="a">
											<xsl:attribute name="href">http://
												<xsl:value-of select="imagen/@pagina"/>
											</xsl:attribute>
											<xsl:attribute name="target">_blank</xsl:attribute>
											<xsl:value-of select="imagen/@pagina"/>
										</xsl:element><br></br>
									<xsl:value-of select="price"/>€<br></br>
									<!--   The button that indicates the price -->
									<xsl:element name="button">
										<xsl:attribute name="class">button</xsl:attribute>
										<xsl:value-of select="format-number(price*../../../VAT, '#.00')"/>€
									</xsl:element>
								</div>
							</div>
						</div>
					</xsl:for-each>
				</section>
					<!--Fourth Part-->
				<div class="orizontal"><h1>Desserts</h1></div>
				<section class="main">
					<xsl:for-each select="$indexXml/heavenHotel/restaurant/Desserts/dish">
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
									<!--Showing the name of the dish wit a different font family   -->
									<xsl:value-of select="name"/><br></br>
									<!-- Showing more information about the dishes   -->
									<xsl:value-of select="category"/><br></br>
									<xsl:value-of select="calories"/> kCal<br></br>
									<xsl:value-of select="ingredients"/><br></br>
									<!--  The site that can be opened in a new tab  -->
									<xsl:element name="a">
											<xsl:attribute name="href">http://
												<xsl:value-of select="imagen/@pagina"/>
											</xsl:attribute>
											<xsl:attribute name="target">_blank</xsl:attribute>
											<xsl:value-of select="imagen/@pagina"/>
										</xsl:element><br></br>
									<xsl:value-of select="price"/>€<br></br>
									<!--   The button that indicates the price -->
									<xsl:element name="button">
										<xsl:attribute name="class">button</xsl:attribute>
										<xsl:value-of select="format-number(price*../../../VAT, '#.00')"/>€
									</xsl:element>
								</div>
							</div>
						</div>
					</xsl:for-each>
				</section>
			</body> 
			<footer>
				<xsl:value-of select="count($indexXml//dish)"/> products selected
				<p>Made by Balica Irina</p>
			</footer>
		</html>
	</xsl:template>
</xsl:stylesheet>