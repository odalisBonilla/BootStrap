

var eggClicked = 0
var hatched =  false
var isSmiling = false;

function setup(){
  createCanvas(500,500);
}

function draw(){
	background(255)

  if (eggClicked == 3) {//hatching
    isSmiling = false;
    hatched = true;
  }
  if (hatched == false) {//hatching
    drawEgg();
  } else {
    drawMonster();

if(isSmiling == true){//Smiling
  drawMouth();
}else {
  drawMonster();
    }
}
}



function mousePressed(){
	if (mouseX > 231 && mouseX < 429 && mouseY > 71 && mouseY < 346) {
      eggClicked++;
      console.log("hi")
      isSmiling = true;
    }
    if (isSmiling == true) {
    drawMouth();
  }
}

function mouseReleased(){
  isSmiling = false;
  }



function drawEgg(){
  fill(0,0,0);
  ellipse(200,200,200,180);
}
function drawMonster(){
  fill(23,0,0);
  ellipse(250, 200, 130, 150);//body
    fill(255);
    ellipse(250, 190, 70, 60);//eyesize
    fill(0);
    rect(235, 180, 30, 30);//eye
    fill(240, 128, 128);
    rect(225, 230, 50, 10);//mouth
}
function drawMouth() {
  fill(100, 70, 30);
  fill(255);
   rect(225, 230, 50, 55);//mouth
   rect(225, 230, 50, 55);//mouth
   strokeWeight(4);
   line(260, 230, 260, 285);
   line(240, 230, 240, 285);
   line(225, 260, 275, 260);
  }
