<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:variable name="indexXml" select="document('../xml/index.xml')"/>
	<xsl:template match="/">
		<html>
			<head>
				<title>Spa Salon Catalogue</title>
				<link rel="stylesheet" type="text/css" href="../Style/catalogue-style.css"/>
			</head>
			<body>
				<!--Navigation bar	-->
				<header>
					<div class="navbar">
						<a href="../index.html"><b> Back to Heaven Hotel</b></a>
					</div>
					<br></br>
					<br></br>
				</header>
				<!--The main part of the page-->
				<section class="main">
					<div class="row">
					<!--The card that indicates the acces to the rooms catalogue	-->
						<div class="column">
							<div class="card">
								<div class="bg-image">
									<a href="../xml/SourceRoom.xml" >
										<h class="center">Visit our hotel rooms</h>
									</a>	
								</div>
							</div>
						</div>
						<!--The card that indicates the acces to the restaurant catalogue	-->
						<div class="column">
							<div class="card">
								<div class="bg-image2">
									<a href="../xml/SourceRestaurant.xml">
										<h class="center">Visit our restaurant</h>
									</a>
								</div>
							</div>
						</div>
						<!--The card that indicates the acces to the Spa Salon catalogue	-->
						<div class="column">
							<div class="card">
								<div class="bg-image3">
									<a href="../xml/SourceSpa.xml">
										<h class="center">Visit our Spa Salon</h>
									</a>
								</div>
							</div>
						</div>
					</div>
				</section>
			</body> 
		</html>
	</xsl:template>
</xsl:stylesheet>