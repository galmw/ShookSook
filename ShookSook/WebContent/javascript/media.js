var imageGallery = [
	"images/photo1.jpg","images/photo2.JPG", "images/photo3.JPG","images/photo4.JPG",
	"images/photo5.JPG","images/photo6.JPG","images/photo8.JPG","images/photo7.jpg",
	"images/photo9.JPG",
	];

var imgCount = 0;
var totalImgs = imageGallery.length - 1;

function next() {
	imgCount++ ;
	if(imgCount > totalImgs)
		imgCount = 0;
   document.getElementById("gallery").src = imageGallery[imgCount] ;
}

function previous() {
    imgCount--;
  	if(imgCount < 0) imgCount = totalImgs ;
       	document.getElementById("gallery").src = imageGallery[imgCount] ;    
    } 