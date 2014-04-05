<%@ Page Language="C#" AutoEventWireup="true" CodeFile="innerpage.aspx.cs" Inherits="innerpage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Brackets</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="description" content="Awesome Brackets game" />
    <meta name="keywords" content="online game, best online game, navigation, round, brackets" />
    <link rel="shortcut icon" href="images/favicon.ico" />
    <link rel="stylesheet" href="css/style.css" type="text/css" media="screen" />
    <link href="hexaflip.css" rel="stylesheet" type="text/css" />
    <link href="demo.css" rel="stylesheet" type="text/css" />
    <link href="styles.css" rel="stylesheet" />

    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA1LWUMxKCQEb2jXWdeMLFDwSZj25ltJS8&sensor=true">
    </script>

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

    <style type="text/css">
        *
        {
            margin: 0;
            padding: 0;
        }
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
            margin-top: 50px;
        }
        #map-canvas
        {
            width: 100%;
            height: 100%;
            z-index: -2;
            position: absolute;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
        }
        a.back
        {
            background: transparent url(back.png) no-repeat top left;
            position: fixed;
            width: 150px;
            height: 27px;
            outline: none;
            bottom: 0px;
            left: 0px;
            z-index: 1;
        }
        #content
        {
            margin: 0 auto;
        }
        #queans
        {
            padding: 3%;
            margin-left: 5%;
            margin-top: 180px;
            background-color: rgba(65, 134, 197, 0.8);
            color: white;
            float: left;
            width: 500px;
            height: 259px;
            -webkit-border-radius: 30px;
            border-radius: 30px;
        }
        #code
        {
            background-color: rgba(255,255,255,0.65);
            padding: 20px;
            text-shadow: 1px 1px 1px #fff;
            text-transform: uppercase;
            font-size: 20px;
            color: black;
            font-family: "Trebuchet MS" , sans-serif;
            height: 174px;
            text-align: center;
            overflow-x: auto;
            overflow-y: auto;
        }
        #codehead
        {
            font-size: 20px;
        }
        .tinput
        {
            width: 300px;
            font-family: brackets;
        }
        input[type="text"]
        {
            padding: 7px;
            background-color: transparent;
            border: none;
            border-bottom: solid 1px #7dcdf0;
            color: white;
            font-size: 16px;
            letter-spacing: 2px;
        }
        #logo
        {
            margin-left: 55%;
            position: absolute;
            margin-top: -0px;
            -moz-transform: scale(0.8) rotate(0deg) translateX(0px) translateY(0px) skewX(0deg) skewY(0deg);
-webkit-transform: scale(0.8) rotate(0deg) translateX(0px) translateY(0px) skewX(0deg) skewY(0deg);
-o-transform: scale(0.8) rotate(0deg) translateX(0px) translateY(0px) skewX(0deg) skewY(0deg);
-ms-transform: scale(0.8) rotate(0deg) translateX(0px) translateY(0px) skewX(0deg) skewY(0deg);
transform: scale(0.8) rotate(0deg) translateX(0px) translateY(0px) skewX(0deg) skewY(0deg);
        }
        .button
        {
            padding: 25px 25px;
            border: none;
            background-color: rgb(6, 50, 143);
            color: white;
            font-weight: 900;
            font-size: 30px;
            cursor: pointer;
            border-radius: 50%;
            text-decoration: none;
            position: absolute;
            left: 45%;
            top: 76%;
            -webkit-transition: all 200ms ease;
            -moz-transition: all 200ms ease;
            -ms-transition: all 200ms ease;
            -o-transition: all 200ms ease;
            transition: all 200ms ease;
        }
        .button:hover
        {
            background-color: white;
            color: rgb(6, 50, 143);
            padding: 28px 28px;
        }
        #map_link
        {
            position: fixed;
            left: 20.8%;
            top: 98px;
            width: 50%;
            height: 77%;
            z-index: 100;
            background-color: rgba(255,255,255,0.45);
        }
        #help_link
        {
            position: fixed;
            left: 11.8%;
            top: 16%;
            width: 67%;
            height: 77%;
            z-index: 100;
            background-color: rgba(255,255,255,0.85);
        }
        #cl
        {
            top: 10%;
            right: 16%;
            position: fixed;
            z-index: 50;
            cursor: pointer;
            background: transparent url(images/CROSS.png) no-repeat 0px 0px;
            height: 52px;
            width: 52px;
        }
        #cl:hover
        {
            background-position: 0px -52px;
        }
        #fade
        {
            background-color: rgba(0,0,0,0.80);
            height: 100%;
            width: 100%;
            margin: 0;
            z-index: 2;
            top: 0;
            position: absolute;
        }
        #sidebar
        {
            background: rgba(50, 128, 213, .9) fixed no-repeat 0 0;
            left: 0;
            top: 0;
            width: 0px;
            min-height: 100%;
            overflow: hidden;
            float: left;
            position: fixed;
        }
        #lead_back
        {
            background: transparent url(images/back.png) no-repeat 0px 0px;
            height: 52px;
            width: 52px;
            cursor: pointer;
            left: 80%;
            position: absolute;
            top: 2%;
        }
        #lead_back:hover
        {
            background-position: 0px -52px;
        }
        #bottombar
        {
            background: rgba(50, 128, 213, .9) fixed no-repeat 0 0;
            left: 0;
            height: 0px;
            min-width: 100%;
            color: White;
            overflow: hidden;
            bottom: 0;
            position: fixed;
            font-family: Verdana;
        }
        #ansbox
        {
            margin-top: 13px;
        }
        #token
        {
            top: 80%;
            left: 58%;
            background: transparent url(images/token.png) no-repeat 0px 0px;
            height: 52px;
            width: 52px;
            position: absolute;
        }
        #token:hover
        {
            background-position: 0px -52px;
        }
        #profile_bar
        {
            color: White;
            font-family: Verdana;
            font-size: 16px;
            left: 100px;
            top: 27px;
            position: absolute;
        }
        #college
        {
            position: absolute;
            top: 61%;
            left: 7%;
            font-size: 16px;
        }
        #remaining_tokens
        {
            position: relative;
            top: 24%;
            left: 66%;
            font-size: 16px;
        }
        #remainig_attempt
        {
            position: absolute;
            left: 66%;
            top: 61%;
            font-size: 16px;
        }
        #level
        {
            position: absolute;
            top: 24%;
            left: 36%;
            font-size: 16px;
        }
        #points
        {
            position: absolute;
            top: 61%;
            left: 36%;
            font-size: 16px;
        }
        #pro_back
        {
            background: transparent url(images/backdown.png) no-repeat 0px 0px;
            height: 52px;
            width: 52px;
            position: absolute;
            top: 1px;
            left: 3px;
        }
        #pro_back:hover
        {
            background-position: 0px -52px;
        }
        .mGrid
        {
            width: 100%;
            background-color: #fff;
            margin: 5px 0 10px 0;
            border: solid 1px #525252;
            border-collapse: collapse;
            font-family: Verdana;
        }
        tr
        {
            height: 20px;
        }
        #tokenlabel
        {
            position: absolute;
            top: 80%;
            left: 62%;
            color: black;
            font-family: verdana;
            font-weight: 600;
            text-indent: 10px;
            line-height: 52px;
            text-shadow: 1px 1px 1px #fff;
            text-transform: uppercase;
        }
        .mGrid td
        {
            padding: 2px;
            border: solid 1px #c1c1c1;
            color: #717171;
            height: 12px;
        }
        .mGrid th
        {
            padding: 4px 2px;
            color: #fff;
            background: #424242 url(images/grd_head.png) repeat-x top;
            border-left: solid 1px #525252;
            font-size: 0.9em;
        }
        .mGrid .alt
        {
            background: #fcfcfc url(images/grd_alt.png) repeat-x top;
        }
        .mGrid .pgr
        {
            background: #424242 url(images/grd_pgr.png) repeat-x top;
        }
        .mGrid .pgr table
        {
            margin: 5px 0;
        }
        .mGrid .pgr td
        {
            border-width: 0;
            padding: 0 6px;
            border-left: solid 1px #666;
            font-weight: bold;
            color: #fff;
            line-height: 12px;
            height: 12px;
        }
        .mGrid .pgr a
        {
            color: #666;
            text-decoration: none;
        }
        .mGrid .pgr a:hover
        {
            color: #000;
            text-decoration: none;
        }
        #welcome
        {
            text-align: center;
            font-family: verdana;
            color: rgb(238, 72, 172);
            text-shadow: 2px 1px 1px black;
            font-weight: 900;
            font-size: 30px;
            padding-bottom: 15px;
        }
        .tablet
        {
            margin-top: 20px;
            padding: 65px;
            font-family: Verdana;
            font-size: 14px;
            font-weight: 500;
        }
        .tabletouter
        {
            background-image: url(   "images/tablet.png" );
            background-repeat: no-repeat;
            width: 500px;
            height: 325px;
            margin: auto;
        }
    </style>
    <style type="text/css">
        </style>

    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>

    <script src="airport.js" type="text/javascript"></script>

    <script type="text/javascript">
    $("#level_story").airport();
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <canvas id="canvas" style="position: absolute; z-index: -1; left: 0px; top: 0px;
        width: 1366px; height: 634px;" height="677px" width="1366"></canvas>

    <script type="text/javascript" src="bubbles.js"></script>

    <div id="logo">
        <h2 id="welcome">
            Welcome To</h2>
        <div id="hexaflip-demo1" class="demo">
        </div>
        <div class="tabletouter">
            <p id="level_story" class="tablet">
                <asp:Label ID="storyarea" runat="server" Text="Goog job, you have found the city but now you need to find the 4 locations in it"></asp:Label></p>
        </div>
    </div>
    <div id="content">
        <div id="queans" class="item">
            <div id="code" class="item">
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></div>
            <div id="ansbox">
                <span id="anstext">I Should Go To :</span></div>
            <asp:TextBox ID="TextBox1" ValidationGroup="group1" runat="server" CssClass="tinput"
                placeholder="your answer"></asp:TextBox>
            <%--            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="group1"
                ControlToValidate="TextBox1" runat="server" ErrorMessage="reknhkjhkbkjsbjkbfskb"></asp:RequiredFieldValidator>--%>
            <asp:Label ID="Label3" runat="server" Style="font-family: Verdana; color: Yellow;"
                Text="Label" Visible="False"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="group1"
                ControlToValidate="TextBox1" runat="server" ErrorMessage=""></asp:RequiredFieldValidator>
            <asp:Button ID="Button1" CssClass="button" ValidationGroup="group1" runat="server"
                Text="Go" OnClick="submitButton_Click" />
            <asp:ImageButton ID="token" runat="server" ImageUrl="images/token.png" CausesValidation="False"
                ToolTip="Use ByPass" OnClick="TokenUsed" CssClass="" />
            <asp:Label ID="tokenlabel" runat="server" Text="Bypass"></asp:Label>
        </div>
        <div class="navigation" id="nav">
            <div class="item user" id="suf_pro">
                <img src="images/bg_user.png" alt="" width="199" height="199" class="circle" id="profile" />
                <a href="#" class="icon"></a>
                <h2>
                    Profile</h2>
            </div>
            <div class="item home" id="suf_help">
                <img src="images/bg_home.png" alt="" width="199" height="199" class="circle" />
                <a href="#" class="icon"></a>
                <h2>
                    Help</h2>
            </div>
            <div class="item shop" id="suf_lead">
                <img src="images/bg_shop.png" alt="" width="199" height="199" class="circle" />
                <a href="#" class="icon"></a>
                <h2>
                    Leader<p style="margin: -35px 10px;">
                        board</p>
                </h2>
            </div>
            <div class="item camera">
                <img src="images/bg_camera.png" alt="" width="199" height="199" class="circle" />
                <a href="http://www.facebook.com/pages/Brackets/186716264810343?sk=app_202980683107053"
                    target="_blank" class="icon"></a>
                <h2>
                    Forum</h2>
            </div>
            <div class="item fav logout">
                <%--<img src="images/bg_fav.png" alt="" width="199" height="199" class="circle"/>
                                  <asp:LinkButton ID="LinkButton1" runat="server" OnClick="logoutButton_Click"></asp:LinkButton>--%>
                <asp:ImageButton ID="ImageButton1" OnClick="logoutButton_Click" ImageUrl="images/logout.png"
                    CssClass="circle" runat="server" />
                <%--                     <a href="#" class="icon"></a>
--%>
                <h2 id="log">
                    Logout</h2>
            </div>
            <div class="item suf" id="suf_map" style="top: 20%; left: 30%;">
                <img src="images/bg_fav.png" alt="" width="199" height="199" class="circle" />
                <a href="#" class="icon"></a>
                <h2>
                    Map</h2>
            </div>
        </div>
    </div>
    <!-- The JavaScript -->

    <script type="text/javascript" src="jquery.easing.1.3.js"></script>

    <script type="text/javascript">
            $(function() {
                $('#nav > div').hover(
                function () {
                    var $this = $(this);
                    $this.find('img').stop().animate({
                        'width'     :'199px',
                        'height'    :'199px',
                        'top'       :'-25px',
                        'left'      :'-25px',
                        'opacity'   :'1.0'
                    },500,'easeOutBack',function(){
                        $(this).parent().find('ul').fadeIn(700);
                    });

                    $this.find('a:first,h2').addClass('active');
                },
                function () {
                    var $this = $(this);
                    $this.find('ul').fadeOut(500);
                    $this.find('img').stop().animate({
                        'width'     :'52px',
                        'height'    :'52px',
                        'top'       :'0px',
                        'left'      :'0px',
                        'opacity'   :'0.1'
                    },5000,'easeOutBack');

                    $this.find('a:first,h2').removeClass('active');
                }
            );
            });
    </script>

    <script type="text/javascript" src="hexaflip.js"></script>

    <script type="text/javascript">
            var hexaDemo1,
                hexaDemo2,
                hexaDemo3,
                text1 = 'STEKCARB'.split(''),
                text2 = ''.split(''),
                settings = {
                    size: 48,
                    margin: 8,
                    fontSize: 36,
                    perspective: 800
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

    <div id="map-canvas">
    </div>
    <div id="map">
    </div>

    <script type="text/javascript">

         $(document).ready(function () {
             $('#suf_map').click(function () {
                 $('#map_link').css('display', 'block');
                 $('#cl').css('display', 'block');
                $('#fade').css('display','block');
                 $('#map_link').attr('src', 'map.html');
                 
             });
         });
    </script>

    <script type="text/javascript">
        $(document).ready(function () {
            $('#cl').click(function () {
                $('#cl').css('display', 'none');
                $('#fade').css('display', 'none');
                $('#map_link').css('display', 'none');
            });
        });
         $(function(){
    $('#suf_lead').click(function(){
        $('#sidebar').animate({width:'700px'},500);
         $('#bottombar').animate({height:'0px'},500);
        });
        });
        $(function() {
         $('#lead_back').click(function(){
          $('#sidebar').animate({width:'0px'},500);
         });
        });
        
        $(function(){
    $('#suf_pro').click(function(){
        $('#bottombar').animate({height:'123px'},500);
        $('#sidebar').animate({width:'0px'},500);
        });
        });
        $(function() {
         $('#pro_back').click(function(){
          $('#bottombar').animate({height:'0px'},500);
         });
        });
        $(function(){
        $('#profile').click(function(){
                  $('#bottombar').animate({height:'0px'},500);

        });
        })
    </script>

    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>

    <script type="text/javascript">

         $(document).ready(function () {
             $('#suf_help').click(function () {
                 $('#help_link').css('display', 'block');
                 $('#cl').css('display', 'block');
                $('#fade').css('display','block');
                 $('#help_link').attr('src', 'help.html');
                 
             });
         });
    </script>

    <script type="text/javascript">
        $(document).ready(function () {
            $('#cl').click(function () {
                $('#cl').css('display', 'none');
                $('#fade').css('display', 'none');
                $('#help_link').css('display', 'none');
            });
        });
    </script>

    <iframe id="map_link" src="" scrolling="no" style="display: none;">
        <div id="frm_close">
        </div>
    </iframe>
    <iframe id="help_link" src="" style="display: none;">
        <div id="Div1">
        </div>
    </iframe>
    <div id="cl" style="display: none">
    </div>
    <div id="fade" style="display: none">
    </div>
    <div id="sidebar">
        <div id="lead_back">
        </div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <contenttemplate>
                <asp:GridView ID="LeaderboardGridView" runat="server" DataSourceID="SqlDataSource1"
                    AutoGenerateColumns="false" AllowPaging="True" Style="top: 75px; left: 15px;
                    position: absolute; height: 100%; width: 670px" PagerStyle-BorderStyle="None"
                    CssClass="mGrid" PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt"
                    PageSize="15">
                    <Columns>
                        <asp:TemplateField HeaderText="Rank">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text="<%# (Container.DataItemIndex)+1 %>"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="name" HeaderText="Name" SortExpression="username" />
                        <asp:BoundField DataField="clg" HeaderText="College" SortExpression="college" />
                <asp:BoundField DataField="level" HeaderText="Level" SortExpression="level" />
                 <asp:BoundField DataField="Points" HeaderText="Points" SortExpression="score" />
                
                    </Columns>
                </asp:GridView>
            </contenttemplate>
        </asp:UpdatePanel>
        <asp:SqlDataSource ProviderName="MySql.Data.MySqlClient" ID="SqlDataSource1" runat="server"
            SelectCommand="Select user.name ,user.clg,player.level,player.points from user inner join player on user.id=player.id order by player.level desc,player.points desc, player.play asc"
            ConnectionString="server=localhost;user id=root;password=akgec;database=brackets;pooling=false">
        </asp:SqlDataSource>
        <p style="color:White;padding:10px;padding-right:150px;"><br />159 is the last level and the person with highest score at that level will win. In case of tie of level and score the list is ordered by who got there first.<br /><br /><br /></p>
    </div>
    <div id="bottombar" runat="server">
        <div id="pro_back">
        </div>
    </div>
    </form>
</body>
</html>
