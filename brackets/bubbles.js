minRadius = 5;
maxRadius = 100;
minVel = -3;
maxVel = 3;
maxNumberOfCircles = 30;
circleColor = '#B3E1E5';

	var browser = new checkBrowser();
	//document.getElementById("canvas").style.height = browser.width+"px";
	//document.getElementById("canvas").style.height = browser.height+"px";
	document.getElementById("canvas").setAttribute("height",browser.height+"px");
	document.getElementById("canvas").setAttribute("width",browser.width+"px");
	main();
  
function main(){
	circles = new Array();
	
	for(i=0;i<maxNumberOfCircles;i++){
		circles[i] = buildCircle();
	}
	
	setInterval(circleDrawing,70);
}

//DRAWS THE CIRCLES
function circleDrawing(){
	var canvas = document.getElementById('canvas');
	//CLEARS CANVAS
	canvas.width = canvas.width;
	var browser = checkBrowser();
	for(i=0;i<maxNumberOfCircles;i++){
		circles[i].x = circles[i].x + circles[i].xVel;
		circles[i].y = circles[i].y + circles[i].yVel;
		
		//IF CIRCLE IS TOO FAR OFF SCREEN, REBUILD
		if(((circles[i].x > (browser.width + circles[i].radius)+10) || circles[i].x < ((0 - circles[i].radius)-10)) || ((circles[i].y > (browser.height + circles[i].radius)+10) || circles[i].y < ((0 - circles[i].radius)-10))){
			circles[i] = buildCircle();
	
		}
	
		drawCircle(circles[i]);
	}
}

//RETURNS VARIABLES OF THE BROWSER
function checkBrowser(){
	browser = new Object();
	browser.height = document.documentElement.clientHeight;
	browser.width = document.documentElement.clientWidth;
	//IF BROWSER HEIGHT OR WIDTH HAS CHANGED, FIX
	var canvas = document.getElementById("canvas");
	if(parseInt(canvas.style.width) != parseInt(browser.width) || parseInt(canvas.style.height) !=
	parseInt(browser.height)){
		canvas.style.width = browser.width+"px";
		canvas.style.height = browser.height+"px";
	}
	return browser;
}	

function buildCircle(){
	var browser = new checkBrowser();
	var circle = new Object();
	circle.radius = randomXToY(minRadius,maxRadius);
	
	//DETERMINES WHERE TO START OFF SCREEN, HAS TO BE THIS LENGTHY
	if(betweenZeroAnd(2) == 1){
		//ANYWHERE ON THE Y AXIS
		circle.y = randomXToY(0 - circle.radius,browser.height + circle.radius);
		
		if(betweenZeroAnd(2) == 1){
			//LEFT SIDE
			circle.x = 0 - circle.radius;
		}else{
			//RIGHT SIDE
			circle.x = browser.width + circle.radius;
		}
	}else{
		//ANYWHERE ON THE X AXIS
		circle.x = randomXToY(0 - circle.radius,browser.width + circle.radius);
		if(betweenZeroAnd(2) == 1){
			//TOP SIDE
			circle.y = 0 - circle.radius;
		}else{
			//BOTTOM SIDE
			circle.y = browser.height + circle.radius;
		}
	}
	
	if(circle.x < 0){
		circle.xVel = randomXToY(0,maxVel);
	}else{
		circle.xVel = randomXToY(minVel,minVel+maxVel);
	}
	
	if(circle.y < 0){
		circle.yVel = randomXToY(0,maxVel);
	}else{
		circle.yVel = randomXToY(minVel,maxVel-minVel);
	}
	//ENSURE CIRCLE IS NOT STATIONARY;
	if(circle.xVel == 0 && circle.yVel ==0){
		circle.yVel = 1;
	}
	return circle
}

//DRAWS CIRCLE
function drawCircle(obj){
	var canvas = document.getElementById('canvas');
    var ctx = canvas.getContext('2d');
	ctx.beginPath();
	ctx.fillStyle = circleColor;
	ctx.globalAlpha = 0.4;
	
	if(location.hash && location.hash == "#image"){
		var img = new Image();
		img.src = 'http://i.imgur.com/brjGj.png';
		ctx.drawImage(img,obj.x,obj.y,obj.radius,obj.radius)
	}else{
		ctx.arc((obj.x),(obj.y),(obj.radius),0,Math.PI*2, false);
		ctx.fill();
	}
	ctx.closePath();
}

function betweenZeroAnd(num){
return Math.floor(Math.random()*(num))
}

//RETURNS NUMBER BETWEEN X AND Y, FLOAT VAL IS DECIMAL PLACES
function randomXToY(minVal,maxVal,floatVal){
  var randVal = minVal+(Math.random()*(maxVal-minVal));
  return typeof floatVal=='undefined'?Math.round(randVal):randVal.toFixed(floatVal);
}