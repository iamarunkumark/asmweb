<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
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
          $('.navbar-default').css('background-color', '');
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
    <div id="outer" style="display:none;"> 
      <div class="policy-bg-gradient">
      <nav id="navbar-full" class="navbar navbar-expand-md navbar-default fixed-top">        
    <button id="nav-toggler-btn" class="navbar-toggler mr-2" type="button"  data-toggle="collapse" data-target="#navbar" aria-controls="navbar"
    aria-expanded="false" aria-label="Toggle navigation">
        <span><i class="fas fa-bars"></i></span>
    </button>    
    <a href="#outer" class="navbar-brand d-flex flex-fill">ASMÅ</a>
    <div class="navbar-collapse collapse" id="navbar">
<ul id="navbar-list" class="navbar-nav justify-content-center d-flex flex-fill">
            <li class="nav-item">
                <a class="nav-link" href="http://anbusupermarkets.com">HOME</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="http://anbusupermarkets.com#about">ABOUT</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="http://anbusupermarkets.com#about">DELIVERY</a>
            </li>
        </ul>
    </div>
    <div class="d-flex flex-fill"><!--spacer--> </div>
</nav>
</div>
  <div class="container" id="startchange" >
    <div class="row">
<div class="col-12" style="margin-top: 20px;">
    <div class="header_name">
      <h1> PRIVACY POLICY </h1>
    </div>
    <div class="text-center" style="padding:3rem 1.5rem 1.5rem 1.5rem">
            <p class="lead"><i>Last updated: April 1, 2018</i></p>
          </div>
    </div>
    <div class="col-md-12 col-sm-12 policy" style="padding-bottom:3rem">
              <p>Your privacy is important to us. It is our policy to respect your privacy regarding any information we may collect from you across our web site, http://www.anbusupermarkets.com.</p>
              <p>We don't ask for your personal information unless we truly need it. When we do, we'll only collect what we need by fair and lawful means and, where appropriate, with your knowledge or consent. We'll also let you know why we're collecting it and how it will be used.</p>
              <p>We don't share your personal information with third-parties, except where required by law. We will only retain personal information for as long as necessary to provide you with a service.</p>
              <p>We don't store your personal information on our servers unless it's required for providing a service to you. What we store, we'll protect within commercially acceptable means to protect your personal information from loss or theft, as well as unauthorized access, disclosure, copying, use or modification.</p>
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
                                        <h6>Map Location</h6>                                                                    
                                    </div>

                            <iframe width="100%" height="100%" frameborder="0" style="border:0" src="https://www.google.com/maps/embed/v1/place?q=Anbu%20Super%20Markets%20Puduppatti%20Pon%2C%20Ponnamaravathi%2C%20Tamil%20Nadu%20622407&key=AIzaSyDsl57Iab-71jNT080CSMpBO0maTN8rBy8" allowfullscreen></iframe>                          
                            </div>
                        </div>
                    </div>
                </div><br>
                <div class="footer-bar">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12 col-sm-12">
                                <a href="anbusupermarkets.com/PrivacyPolicy.html">Privacy Policy</a>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
</div>
</div>
  </body>
</html>