<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/static/css/demo.css"
	type="text/css" rel="stylesheet"></head>
<body>
	 <div class="slideshow-container">
            <div class="myslides fade">
                <div class="numbers">1 / 4</div>
                <div><img src="${pageContext.request.contextPath}/static/image/tanang.jpg"></div>
                <div class="caption">Text 1</div>
            </div>
            <div class="myslides fade">
                <div class="numbers">2 / 4</div>
                <div><img src="${pageContext.request.contextPath}/static/image/thailan.jpg"></div>
                <div class="caption">Text 2</div>
            </div>
            <div class="myslides fade">
                <div class="numbers">3 / 4</div>
                <div><img src="${pageContext.request.contextPath}/static/image_viewmap/hue3.jpg"></div>
                <div class="caption">Text 3</div>
            </div>
            <div class="myslides fade">
                <div class="numbers">4 / 4</div>
                <div><img src="${pageContext.request.contextPath}/static/image_viewmap/hue1.jpg"></div>
                <div class="caption">Text 4</div>
            </div>
            <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
            <a class="next" onclick="plusSlides(1)">&#10095;</a>
        </div>
        <br>
        <div style="text-align:center">
            <span class="dots" onclick="currentSlide(1)"></span> 
            <span class="dots" onclick="currentSlide(2)"></span> 
            <span class="dots" onclick="currentSlide(3)"></span> 
            <span class="dots" onclick="currentSlide(4)"></span> 
        </div>
        <script type="text/javascript">
        var index=1;
        var curret=1;
       showimage(index);
       function plusSlides(n){
           showimage(index+=n);
       }
       //function currentSlide(n){showimage(index=n);}
       function showimage(n){
           var i;
           var slides =document.querySelectorAll('.myslides');
        //   var dots=document.querySelectorAll('.dots');
           if(n>slides.length){index=1;}
            console.log(slides.length);
           if(n<1){index=slides.length;}
           for (i=0;i<slides.length;i++) {
              slides[i].style.display = "none";
           }
          /*  for ( i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active","");
            } */
           slides[index-1].style.display = "block";
       }
       </script>
</body>
</html>