var slideIndex = 0;
				showSlides();

			function showSlides() {
				var i;
				var slides = document.getElementsByClassName("mySlides");
				for (i = 0; i < slides.length; i++) {
					slides[i].style.display = "none"; 
				}
				slideIndex++;
				if (slideIndex > slides.length) {slideIndex = 1} 
				slides[slideIndex-1].style.display = "block"; 
				setTimeout(showSlides, 4000); // Change image every 2 seconds
			}
var slideIndex = 0;
				showSlides();

			function showSlides() {
				var i;
				var slides = document.getElementsByClassName("mySlides");
				for (i = 0; i < slides.length; i++) {
					slides[i].style.display = "none"; 
				}
				slideIndex++;
				if (slideIndex > slides.length) {slideIndex = 1} 
				slides[slideIndex-1].style.display = "block"; 
				setTimeout(showSlides, 4000); // Change image every 2 seconds
			}			
function openForm() {
		document.getElementById("myForm").style.display = "block";
		}

function closeForm() {
		document.getElementById("myForm").style.display = "none";
		}
		
function openForm() {
		document.getElementById("myForm2").style.display = "block";
		}

function closeForm() {
		document.getElementById("myForm2").style.display = "none";
		}