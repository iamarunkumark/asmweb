<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Anbu Super Markets</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src='<c:url value="/resources/libs/bootstrap.min.js" />'></script>
    <link rel='stylesheet' href='<c:url value="/resources/libs/bootstrap.min.css" />' type='text/css' media='all' />
    <link rel='stylesheet' href='<c:url value="/resources/css/asm.css" />' type='text/css' media='all' />
    <script defer src="https://use.fontawesome.com/releases/v5.0.9/js/all.js" integrity="sha384-8iPTk2s/jMVj81dnzb/iFR2sdA7u06vHJyyLlAd4snFpCl/SnyUjRrbdJsw1pGIl" crossorigin="anonymous"></script>
    <script>
    function init() {
      $("#loading").hide();
      $("#outer").show();
      $(".nav-link").css('color', '#ffffff');      
          $(".navbar-brand").css('color', '#ffffff'); 
    }
  $(document).ready(function(){       
   var scroll_start = 0;
   var startchange = $('#startchange');
   var offset = startchange.offset();
    if (startchange.length){
   $(document).scroll(function() { 
      scroll_start = $(this).scrollTop();
      if(scroll_start > offset.top) {
          $(".navbar-default").css('background-color', '#ffffff');
          $(".nav-link").css('color', '#007bff');          
          $(".navbar-brand").css('color', '#007bff');          
       } else {
          $('.navbar-default').css('background-color', 'transparent');
          $(".nav-link").css('color', '#ffffff');      
          $(".navbar-brand").css('color', '#ffffff'); 
       }
   });
    }
});

  $(function() {
    // navbar background color
  $( "#nav-toggler-btn" ).click(function() {
  var scroll_start = 0;
   var startchange = $('#startchange');
   var offset = startchange.offset();
    if (startchange.length){
      scroll_start = $(this).scrollTop();
      if(scroll_start <= offset.top) {
        $(".navbar-default").css('background-color', '#ffffff');
      $(".nav-link").css('color', '#007bff');          
      $(".navbar-brand").css('color', '#007bff');          
      }
  }  
});
});
  $(function(){ 
     var navMain = $(".navbar-collapse"); // avoid dependency on #id
     // "a:not([data-toggle])" - to avoid issues caused
     // when you have dropdown inside navbar
     navMain.on("click", "a:not([data-toggle])", null, function () {
         navMain.collapse('hide');
     });
 });
    </script>
  </head>
  <body onload="init()" data-spy="scroll" data-target=".navbar" data-offset="50">
    <div class="loader" id="loading"></div>
    <div id="outer" style="display:none"> 
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = 'https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v2.12&appId=1341851349195879&autoLogAppEvents=1';
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));
</script>    
    <div class="background-gradient">
      <nav id="navbar-full" class="navbar navbar-expand-md navbar-default fixed-top">        
    <button id="nav-toggler-btn" class="navbar-toggler mr-2" type="button"  data-toggle="collapse" data-target="#navbar" aria-controls="navbar"
    aria-expanded="false" aria-label="Toggle navigation">
        <span><i class="fas fa-bars"></i></span>
    </button>    
    <a href="#outer" class="navbar-brand d-flex flex-fill">ASMÅ</a>
    <div class="navbar-collapse collapse" id="navbar">
<ul id="navbar-list" class="navbar-nav justify-content-center d-flex flex-fill">
            <li class="nav-item">
                <a class="nav-link" href="#outer">HOME</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#about">ABOUT</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#order">ORDER</a>
            </li>
        </ul>
    </div>
    <div class="d-flex flex-fill"><!--spacer--> </div>
  </nav>
<div class="container" id="startchange">
  <div class="row">
    <div class="col-md-12 col-sm-12">
    <div style="margin-top:130px;">
    </div>
    <h1 id="block-heading"> 
      <strong>
        Anbu Super Markets
      </strong>
    </h1>
    <p id="block-para">
      Quality is our motto! <br>
    </p>
    </div>    
  </div>
</div>
</div> <!-- gradient ends here -->
<!--  Carousel Starts here-->
<!-- <div id="myCarousel" class="carousel slide" data-ride="carousel">
  Indicators
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  Wrapper for slides
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="images/carousel1.jpg" width="1100" height="300" alt="Chania">
      <div class="carousel-caption">
        <h3>Los Angeles</h3>
        <p>LA is always so much fun!</p>
      </div>
    </div>

    <div class="carousel-item">
      <img src="images/carousel2.jpg" width="1100" height="300" alt="Chicago">
      <div class="carousel-caption">
        <h3>Chicago</h3>
        <p>Thank you, Chicago!</p>
      </div>
    </div>

    <div class="carousel-item">
      <img src="images/carousel3.jpg" width="1100" height="300" alt="New York">
      <div class="carousel-caption">
        <h3>New York</h3>
        <p>We love the Big Apple!</p>
      </div>
    </div>
  </div>
  Left and right controls
  <a class="carousel-control-prev" href="#myCarousel" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#myCarousel" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div> -->
<!--  Carousel Ends here-->
<!-- 
Online Order Form Starts here
 -->
 
<!-- Home Delivery Content -->
  <div class="container-fluid" id="order">
    <div class="row">
    <div class="col-md-6 col-sm-12" >
    <!-- Upload form -->
    <form:form id = 'deliveryOrderForm' commandName="contactAddressForm" enctype="multipart/form-data" action='/asmweb/addOrder'>
    <div class="form-group">
    <label for="orderFile">Upload File</label>
    <form:input type="file" path='orderFile' title='Photo' class="form-control-file" id="orderFile" />
 	</div>
 	<div class="form-group">
	<label for="customerName" class="required">Name</label>
	<form:input id="customerName" path='customerName' name="customerName" title="Name" type="text" class="form-control" value="" maxlength="30" />
 	</div>
    <div class="form-group">
	<label for="contactNumber" class="required">Contact Number</label>
	<form:input id="contactNumber" name="contactNumber" title="Phone Number" path='contactNumber' type="text" class="form-control" value="" maxlength="11" />
 	</div>
 	<div class="form-group">
	<label for="addressLine1" class="required">Address Line 1</label>
	<form:input id="addressLine1" name="addressLine1" path="addressLine1" title="Address" type="text" class="form-control" value="" maxlength="30" />
 	</div>
 	<div class="form-group">
	<label for="addressLine2" class="required">Address Line 2</label>
	<form:input id="addressLine2" name="addressLine2" path='addressLine2' title="Address" type="text" class="form-control" value="" maxlength="30" />
 	</div>
 	<div class="form-group">
	<label for="city" class="required">Village/Town/City</label>
	<form:input id="city" name="city" path='city' title="City" type="text" class="form-control" value="" maxlength="30" />
 	</div>
 	<div class="form-group">
	<label for="pinCode" class="required">Pin Code</label>
	<form:input id="pinCode" path='pinCode' name="pinCode" title="Pin Code" type="text" class="form-control" maxlength="6" />
 	</div>
 	<form:input id="state" path='state' name="state" title="State" type="hidden" class="form-control" value="TamilNadu" maxlength="20" />
 	<%-- <div class="form-group" >
	<label for="state" class="required">State</label>
	<form:input id="state" path='state' name="state" title="State" type="hidden" class="form-control" value="TamilNadu" maxlength="20" />
 	</div>
    <div class="form-group" >
	<label for="country" class="required">Country</label>
	<form:input id="country" path='country' name="country" title="Country" type="hidden" class="form-control" value="India" maxlength="20" />
 	</div> --%>
    <form:input id="country" path='country' name="country" title="Country" type="hidden" class="form-control" value="India" maxlength="20" />
    <button class="btn btn-primary nextBtn btn-lg pull-left" type="button" id = "saveBtn" >Place Order</button>
    </form:form>
    </div>
    <div class="col-md-3 col-sm-12" >
    </div>
    <div class="col-md-3 col-sm-12" id="facebook-feed">
    <div ><!-- style="float:right;" -->
          <h6>Facebook Feed</h6>      
      <div class="fb-page" data-href="https://www.facebook.com/anbusupermarkets" data-tabs="timeline" data-width="350" data-height="450" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"><blockquote cite="https://www.facebook.com/anbusupermarkets" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/anbusupermarkets">Anbu Super Markets</a></blockquote></div>
    </div>
    </div>
    </div>
  </div>
<!--Footer-->
<footer class="footer" id="block-footer">
                <div class="footer-widgets">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6 col-sm-12">
                                <!-- Text widget-->
                                <aside class="widget widget-text">
                                    <div class="widget-title">
                                        <h6>Contact Us</h6>
                                    </div>
                                    <div class="textwidget">                                        
                                        <p>
                                            Location: Anna Salai, Ponnamaravathy<br>
                                            Pudukkottai District. 622407<br>
                                            E-mail: anbusupermarkets@outlook.com<br>
                                            Phone: 04333 263600<br>
                                        </p>
                                        <ul class="social-icons">
                                            <!-- <li><a href="#"><i class="fab fa-twitter"></i></a></li> -->
                                            <!-- <li><a href="#"><i class="fab fa-instagram"></i></a></li> -->
                                            <li>Follow us on &nbsp;&nbsp; <a href="https://www.facebook.com/anbusupermarkets"><i class="fab fa-facebook-f"></i></a></li>                                          
                                        </ul>
                                    </div>
                                </aside>
                            </div>
                            <div class="col-md-6 col-sm-12">                                
                                        <div class="widget-title">
                                        <h6>Google Maps</h6>                                                                    
                                    </div>

                            <iframe width="100%" height="100%" frameborder="0" style="border:0" src="https://www.google.com/maps/embed/v1/place?q=Anbu%20Super%20Markets%20Puduppatti%20Pon%2C%20Ponnamaravathi%2C%20Tamil%20Nadu%20622407&key=AIzaSyDsl57Iab-71jNT080CSMpBO0maTN8rBy8" allowfullscreen></iframe>                          
                            </div>
                        </div>
                    </div>
                </div>
                <br>
                <div class="footer-bar">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12 col-sm-12">
                                <a href="/asmweb/privacy">Privacy Policy</a>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
</div>
  </body>
</html>