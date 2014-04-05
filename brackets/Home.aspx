<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<html xmlns:fb="http://ogp.me/ns/fb#">
<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Brackets</title>
    <meta name="description" content="Brackets the online game" />
    <meta name="keywords" content="brackets, techtrishna, software, incubator, tt, si" />
    <meta name="author" content="Software Incubator" />
    <link rel="shortcut icon" href="images/favicon.ico" />
    <link href="hexaflip.css" rel="stylesheet" type="text/css" />
    <link href="demo.css" rel="stylesheet" type="text/css" />
    <link href="styles.css" rel="stylesheet" />

    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA1LWUMxKCQEb2jXWdeMLFDwSZj25ltJS8&sensor=true">
    </script>

    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link href="css/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="css/style.css" rel="stylesheet" type="text/css" />

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>

    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>

    <script type="text/javascript">
        var lat = 15;
        var long = 75;
        var map;
        var k = 0.0005;
        var c = 0;
        var gMap;
        var styles = [
              {
                  stylers: [
                    { hue: "#00ffe6" },
                    { saturation: -20 }
                  ]
              }, {
                  featureType: "road",
                  elementType: "geometry",
                  stylers: [
                    { lightness: 100 },
                    { visibility: "simplified" }
                  ]
              }, {
                  featureType: "road",
                  elementType: "labels",
                  stylers: [
                    { visibility: "off" }
                  ]
              }
        ];
        function initialize() {

            // Create an array of styles.


            // Create a new StyledMapType object, passing it the array of styles,
            // as well as the name to be displayed on the map type control.
            var styledMap = new google.maps.StyledMapType(styles,
              { name: "Styled Map" });

            // Create a map object, and include the MapTypeId to add
            // to the map type control.
            var mapOptions = {
                zoom: 9,
                center: new google.maps.LatLng(lat, long),
                disableDefaultUI: true,
                mapTypeControlOptions: {
                    mapTypeIds: [google.maps.MapTypeId.ROADMAP, 'map_style']
                }
            };
            map = new google.maps.Map(document.getElementById('map-canvas'),
              mapOptions);

            //Associate the styled map with the MapTypeId and set it to display.
            map.mapTypes.set('map_style', styledMap);
            map.setMapTypeId('map_style');
            animatemap();
        }
        google.maps.event.addDomListener(window, 'load', initialize);
        function animatemap() {

            if (lat > 70) {
                c = 1;
            }
            if (lat < -70) {
                c = 0;
            }
            if (c == 1) {
                lat = lat - k;


            }
            if (c == 0) {
                lat = lat + k;

            }

            long = long + k;
            map.setZoom(9);      // This will trigger a zoom_changed on the map
            map.setCenter(new google.maps.LatLng(lat, long));
            setTimeout(animatemap, 10);
        }

    </script>

    <div id="fb-root">
    </div>
    <div id="Div2">
    </div>

    <script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1&appId=547809731899611";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

    <div id="Div1">
    </div>

    <script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1&appId=547809731899611";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

    <style type="text/css">
        body:before
        {
            content: "";
            position: fixed;
            top: -100px;
            left: 0;
            width: 100%;
            height: 100px;
            -webkit-box-shadow: 0px 0px 100px rgba(0,0,0,.9);
            -moz-box-shadow: 0px 0px 100px rgba(0,0,0,.9);
            box-shadow: 0px 0px 100px rgba(0,0,0,.9);
            z-index: 100;
        }
        body
        {
            width: 100%;
            height: 100%;
            margin: 0;
            padding: 0;
            margin-top: auto;
            background-attachment: fixed;
            overflow: auto;
            overflow-y: hidden;
            font-family: Verdana;
        }
        #map-canvas
        {
            width: 100%;
            height: 100%;
            z-index: -3;
            position: absolute;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
        }
        #container
        {
            z-index: 2;
            width: 960px;
            margin: 50px auto;
        }
        #loginpanel
        {
            width: 350px;
            padding: 20px;
            background-color: rgba(0,0,0,0.7);
            position: absolute;
            right: 5%;
            top: 30%;
            color: white;
            z-index: 5;
            -webkit-border-radius: 20px 20px 0px 0px;
border-radius: 20px 20px 0px 0px;
        }
        #like
        {
            width: 346px;
            padding: 20px;
            background-color: rgba(0,0,0,0.7);
            right: 5%;
            top: 60%;
            color: white;
            z-index: 5;
            position: absolute;
            padding: 22px;
            -webkit-border-radius: 0px 0px 20px 20px;
border-radius:  0px 0px 20px 20px;
        }
        .tinput
        {
            width: 200px;
            display: block;
            padding: 10px;
            margin: 10px 0px;
        }
        input[type="text"]
        {
            padding: 7px;
            background-color: transparent;
            border: none;
            border-bottom: solid 1px #e4960b;
            color: white;
            font-size: 16px;
            letter-spacing: 2px;
        }
        input[type="password"]
        {
            padding: 7px;
            background-color: transparent;
            border: none;
            border-bottom: solid 1px #e4960b;
            color: white;
            font-size: 16px;
            letter-spacing: 2px;
        }
        .button
        {
            padding: 10px 15px;
            border: none;
            background-color: #e4960b;
            color: #333;
            font-weight: 900;
            font-size: 16px;
            left: 82%;
            position: absolute;
            cursor: pointer;
            top: 37%;
            -webkit-border-radius: 5px 0px 0px 5px;
border-radius: 5px 0px 0px 5px;
        }
        .gearitem
        {
            height: 208px;
            margin: 30px auto;
            width: 450px;
            margin: -250px 810px;
            z-index: -1;
            position: absolute;
        }
        #cover
        {
            background-color: rgba(0,0,255,.15);
            top: 0;
            position: absolute;
            height: 100%;
            width: 100%;
            z-index: -1;
        }
        .container
        {
            width: 500px;
            margin-top: 15%;
            font-family: "Trebuchet MS" , sans-serif;
            text-shadow: 1px 1px 1px #fff;
            text-transform: uppercase;
        }
        #leftpanel
        {
            margin-top: -27%;
            margin-left: 78px;
            width: 665px;
            height: auto;
        }
        #story_bar
        {
            background: rgba(50, 128, 213, 0) fixed no-repeat 0 0;
            left: 0;
            top: 0;
            width: 0px;
            min-height: 100%;
            overflow: hidden;
            float: left;
            position: fixed;
            z-index: 1000;
            font-family: Verdana;
            letter-spacing: 2px;
        }
        #htp_bar
        {
            background: rgba(50, 128, 213, 1) fixed no-repeat 0 0;
            left: 0;
            top: 0;
            width: 0px;
            min-height: 100%;
            overflow: hidden;
            float: left;
            position: fixed;
            z-index: 1000;
        }
        #wrp
        {
            margin: 201px;
            height: auto;
            background-color: #FFF;
            min-width: 891px;
            max-width: 891px;
            padding: 20px;
            position: absolute;
            border: 5px solid rgb(31, 163, 236);
            -webkit-box-shadow: rgba(0, 0, 0, 0.8) 0px 0px 1px;
            box-shadow: rgba(0, 0, 0, 0.8) 0px 0px 20px;
        }
        #story_back
        {
            background: transparent url(images/back.png) no-repeat 0px 0px;
            height: 52px;
            width: 52px;
            position: absolute;
            top: 160px;
            left: 144px;
            z-index: 2;
        }
        #story_back:hover
        {
            background-position: 0px -52px;
            height: 52px;
            width: 52px;
        }
        /* CSS3 keyframes */@-webkit-keyframes@-webkit-keyframes@-webkit-keyframesckw{0%{-moz-transform:rotate(0deg);-webkit-transform:rotate(0deg);}100%{-moz-transform:rotate(360deg);-webkit-transform:rotate(360deg);}@-moz-keyframesckw{0%{-moz-transform:rotate(0deg);-webkit-transform:rotate(0deg);}100%{-moz-transform:rotate(360deg);-webkit-transform:rotate(360deg);}@-webkit-keyframescckw{0%{-moz-transform:rotate(360deg);-webkit-transform:rotate(360deg);}100%{-moz-transform:rotate(0deg);-webkit-transform:rotate(0deg);}@-moz-keyframescckw{0%{-moz-transform:rotate(360deg);-webkit-transform:rotate(360deg);}100%{-moz-transform:rotate(0deg);-webkit-transform:rotate(0deg);}/* gears */
        .gear
        {
            float: none;
            position: absolute;
            text-align: center;
            -moz-animation-timing-function: linear;
            -moz-animation-iteration-count: infinite;
            -moz-animation-direction: normal;
            -moz-animation-delay: 0;
            -moz-animation-play-state: running;
            -moz-animation-fill-mode: forwards;
            -webkit-animation-timing-function: linear;
            -webkit-animation-iteration-count: infinite;
            -webkit-animation-direction: normal;
            -webkit-animation-delay: 0;
            -webkit-animation-play-state: running;
            -webkit-animation-fill-mode: forwards;
        }
        #gear1
        {
            background: url(  'images/g1.png' ) no-repeat 0 0;
            height: 85px;
            left: 31px;
            top: 45px;
            width: 85px;
            -moz-animation-name: ckw;
            -moz-animation-duration: 10s;
            -webkit-animation-name: ckw;
            -webkit-animation-duration: 10s;
        }
        #gear2
        {
            background: url(  'images/g2.png' ) no-repeat 0 0;
            height: 125px;
            left: 105px;
            top: 10px;
            width: 125px;
            -moz-animation-name: cckw;
            -moz-animation-duration: 16.84s;
            -webkit-animation-name: cckw;
            -webkit-animation-duration: 16.84s;
        }
        #gear3
        {
            background: url(  'images/g3.png' ) no-repeat 0 0;
            height: 103px;
            left: 149px;
            top: 118px;
            width: 103px;
            -moz-animation-name: ckw;
            -moz-animation-duration: 13.5s;
            -webkit-animation-name: ckw;
            -webkit-animation-duration: 13.5s;
        }
        #gear4
        {
            background: url(  'images/g4.png' ) no-repeat 0 0;
            height: 144px;
            left: 46px;
            top: 173px;
            width: 144px;
            -moz-animation-name: cckw;
            -moz-animation-duration: 20.2s;
            -webkit-animation-name: cckw;
            -webkit-animation-duration: 20.2s;
        }
        #gear5
        {
            background: url(  'images/g1.png' ) no-repeat 0 0;
            height: 85px;
            left: 127px;
            top: 292px;
            width: 85px;
            -moz-animation-name: ckw;
            -moz-animation-duration: 10s;
            -webkit-animation-name: ckw;
            -webkit-animation-duration: 10s;
        }
        #gear6
        {
            background: url(  'images/g2.png' ) no-repeat 0 0;
            height: 125px;
            left: 200px;
            top: 283px;
            width: 125px;
            -moz-animation-name: cckw;
            -moz-animation-duration: 16.84s;
            -webkit-animation-name: cckw;
            -webkit-animation-duration: 16.84s;
        }
        #gear7
        {
            background: url(  'images/g3.png' ) no-repeat 0 0;
            height: 103px;
            left: 277px;
            top: 217px;
            width: 103px;
            -moz-animation-name: ckw;
            -moz-animation-duration: 13.5s;
            -webkit-animation-name: ckw;
            -webkit-animation-duration: 13.5s;
        }
    </style>
    <style type="text/css">
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <canvas id="canvas" style="position: absolute; z-index: -1; left: 0px; top: 0px;
        width: 1366px; height: 634px;" height="677px" width="1366"></canvas>

    <script type="text/javascript" src="bubbles.js"></script>

    <div id="container">
        <div id="hexaflip-demo1" class="demo">
        </div>
        <div id="loginpanel">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="tinput" placeholder="Email Id"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="tinput" TextMode="Password" placeholder="Password"></asp:TextBox>
            <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
            <asp:Button ID="Button1" runat="server" Text="Enter" CssClass="button" OnClick="Button1_Click" /><br />
            <a href="http://techtrishna.in" target="_blank" style="color: rgb(182,176,30); text-decoration: none;">Not Registered ?</a>
        </div>
        <br />
        <div id="like">
            <table>
                <tbody>
                    <tr>
                        <td>
                            <img src="images/si_logo.jpg" alt="Software Incubator" title="Software Icubator"
                                height="50" width="50" />
                        </td>
                        <td>
                            Software Incubator
                        </td>
                        <td>
                            <fb:like href="https://www.facebook.com/RedifiningLimitations" send="false" layout="button_count"
                                width="150" show_faces="false" font="verdana" colorscheme="dark">
                            </fb:like>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <img src="images/b.png" alt="brackets" title="Brackets" height="50px" />
                        </td>
                        <td>
                            Brackets
                        </td>
                        <td>
                            <fb:like href="https://www.facebook.com/pages/Brackets/186716264810343" send="false"
                                layout="button_count" width="1 50" show_faces="false" font="verdana" colorscheme="dark">
                            </fb:like>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    <div class="gearitem">
        <div class="gear" id="gear1">
        </div>
        <div class="gear" id="gear2">
        </div>
        <div class="gear" id="gear3">
        </div>
        <div class="gear" id="gear4">
        </div>
        <div class="gear" id="gear5">
        </div>
        <div class="gear" id="gear6">
        </div>
        <div class="gear" id="gear7">
        </div>
    </div>
    </div>
    <div id="map-canvas">
    </div>

    <script type="text/javascript" src="hexaflip.js"></script>

    <script type="text/javascript">
            var hexaDemo1,
                hexaDemo2,
                hexaDemo3,
                text1 = 'STEKCARB'.split(''),
                text2 = ''.split(''),
                settings = {
                    size: 72,
                    margin: 12,
                    fontSize: 48,
                    perspective: 450
                },
                makeObject = function (a) {
                    var o = {};
                    for (var i = 0, l = a.length; i < l; i++) {
                        o['letter' + i] = a;
                    }
                    return o;
                },
                getSequence = function (a, reverse, random) {
                    var o = {}, p;
                    for (var i = 0, l = a.length; i < l; i++) {
                        if (reverse) {
                            p = l - i - 1;
                        } else if (random) {
                            p = Math.floor(Math.random() * l);
                        } else {
                            p = i;
                        }
                        o['letter' + i] = a[p];
                    }
                    return o;
                };

            document.addEventListener('DOMContentLoaded', function () {
                hexaDemo1 = new HexaFlip(document.getElementById('hexaflip-demo1'), makeObject(text1), settings);
                hexaDemo2 = new HexaFlip(document.getElementById('hexaflip-demo2'), makeObject(text2), settings);
                hexaDemo3 = new HexaFlip(document.getElementById('hexaflip-demo3'));

                setTimeout(function () {
                    hexaDemo1.setValue(getSequence(text1, true));
                    hexaDemo2.setValue(getSequence(text2, true));
                }, 0);

                setTimeout(function () {
                    hexaDemo1.setValue(getSequence(text1));
                    hexaDemo2.setValue(getSequence(text2));
                }, 1000);

                setTimeout(function () {
                    setInterval(function () {
                        hexaDemo1.setValue(getSequence(text1, true, false));
                        hexaDemo2.setValue(getSequence(text2, false, true));
                    }, 3000);
                }, 5000);
            }, false);

    </script>

    <div id="cover">
    </div>
    <div id="leftpanel">
        <div class="wrapper">
            <div class="circleBig">
                <div id="menu" class="menu">
                    <div id="about" class="about" style="cursor: pointer;">
                        About Brackets</div>
                    <a id="portfolio" class="portfolio" href="">Credits</a> <a id="contact" class="contact"
                        href="http://www.silive.in">Contact</a></div>
            </div>
        </div>
        <%-- <div id="circle_about" class="circle">
                <div class="description">
                    <ul style="margin-top: -154px; margin-left: -201px;">
                        <li><a href="#"  id="story">Story</a></li>
                        <li><a href="#" id="htp">How to play ?</a></li>
                        <li><a href="#"></a></li>
                    </ul>
                </div>
            </div>--%>

        <script type="text/javascript">
                $(document).ready(function() {
            $('#about').click(function()
            {
                $('#story_bar').animate({width:'100%'},500);
                });
                });
                 $(function() {
         $('#story_back').click(function(){
          $('#story_bar').animate({width:'0px'},500);
         });
        });
        </script>

        <script type="text/javascript">
                $(document).ready(function() {
            $('#htp').click(function()
            {
                $('#htp_bar').animate({width:'100%'},500);
                });
                });
                 $(function() {
         $('#htp_back').click(function(){
          $('#htp_bar').animate({width:'0px'},500);
         });
        });
        </script>

        <div id="circle_portfolio" class="circle">
            <div class="description">
                <div class="thumbs" style="margin-left: -345%;">
                    <a href="https://www.facebook.com/chetna.khanna.509">
                        <img src="thumbs/5.jpg" alt="" title="Chetna Khanna" /></a> <a href="https://www.facebook.com/prince.arora.39566">
                            <img src="thumbs/7.jpg" alt="" title="Prince Arora" /></a><br />
                    <a href="https://www.facebook.com/tanay.tandon.39">
                        <img src="thumbs/8.jpg" alt="" title="Tanay Tandon" /></a> <a href="https://www.facebook.com/aragon.cuidadoso">
                            <img src="thumbs/9.jpg" id="yo9" alt="" title="Ashish Mishra" /></a>
                </div>
            </div>
        </div>
        <div id="circle_contact" class="circle">
            <div class="description">
                <ul>
                    <li>Ashish Mishra</li>
                    <span style="color: Red">+919899370690</span>
                    <li>Tanay Tandon</li>
                    <span style="color: Red">+919971528807</span>
                </ul>
            </div>
        </div>
    </div>

    <script type="text/javascript" src="jquery.path.js"></script>

    <script type="text/javascript">
            $(function() {
                
                /* when page loads animate the about section by default */
                //move($('#about'),2000,2);

                $('#menu > a').mouseover(
                function(){
                    var $this = $(this);
                    move($this,800,1);
                }
            );

                /*
                function to animate / show one circle.
                speed is the time it takes to show the circle
                turns is the turns the circle gives around the big circle
                 */
                function move($elem,speed,turns){
                    var id = $elem.attr('id');
                    var $circle = $('#circle_'+id);

                    /* if hover the same one nothing happens */
                    if($circle.css('opacity')==1)
                        return;

                    /* change the image */
                    $('#image_'+id).stop(true,true).fadeIn(650).siblings().not(this).fadeOut(650);

                    /*
                    if there's a circle already, then let's remove it:
                    either animate it in a circular movement or just fading out, depending on the current position of it
                     */
                    $('#leftpanel .circle').each(function(i){
                        var $theCircle = $(this);
                        if($theCircle.css('opacity')==1)
                            $theCircle.stop()
                        .animate({
                            path : new $.path.arc({
                                center	: [409,359],
                                radius	: 257,
                                start	: 65,
                                end     : -110,
                                dir	: -1,
                                opacity:'0'
                            }),
                            opacity: '0'
                        },1500);
                        else
                            $theCircle.stop()
                        .animate({opacity: '0'},200);
                    });

                    /* make the circle appear in a circular movement */
                    var end = 65 - 360 * (turns-1);
                    $circle.stop()
                    .animate({
                        path : new $.path.arc({
                            center	: [409,359],
                            radius	: 257,
                            start	: 180,
                            end		: end,
                            dir		: -1
                        }),
                        opacity: '1'
                    },speed);
                }
            });
    </script>

    <div id="story_bar">
        <div id="story_back">
            <a href="#"></a>
        </div>
        <div id="wrp">
            &nbsp;&nbsp;&nbsp;&nbsp;A criminal mastermind <b>"Tom Capone"</b> wants to destroy
            all the major cities in the world. Through his agents, he has succeded in planting
            bombs at various landmarks. CIA has hacked into <b>Capone's</b> system . The system
            has the names of the bomb locations but they have been encrypted.
            <p>
                &nbsp;&nbsp;&nbsp;&nbsp; CIA has assigned you the task to find names of the cities
                and the 4 locations inside each city.</p>
        </div>
    </div>
    <div id="htp_bar">
        <a href="#" id="htp_back">back</a>
    </div>
    </form>
</body>
</html>
