<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
          <script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
            <link href="${pageContext.request.contextPath}/static/css/Newcss.css" type="text/css" rel="stylesheet">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
      
        <style>
           
        </style>
    </head>
    <body>
        <a href="#0" class="cd-popup-trigger">View Pop-up</a>
               
             <div id="popup" role="alert">
                <div class="cd-popup-container">
		<p>Are you sure you want to delete this element?</p>
		<div class="cd-buttons">
			<div><a href="#0">Yes</a></div>
			<div><a href="#0">No</a></div>
		</div>
		<a href="#0" class="cd-popup-close img-replace"></a>
                                </div> <!-- cd-popup-container -->
            </div> <!-- cd-popup -->       
        <div class="warpper">
            <div>
                <span style="color: #cccccc">Xem Bài Viết: </span><span style="color: #fff;">Confirm Pop Up đơn giản với CSS3 và jQuery</span>
            </div>
        </div>
        <script language="javascript">
                  jQuery(document).ready(function($){
    //open popup
    $('.cd-popup-trigger').on('click', function(event){
        event.preventDefault();
        $('#popup').addClass('visiablen');
     });
     });
        </script>
 </body>
</html>