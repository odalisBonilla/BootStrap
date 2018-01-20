var playerChoice
var computerChoice
var xPos
var yPos
var Img

function preload(){
  //Img = loadImage("rocks.png")
}

function setup(){
  createCanvas(600,600)

}

function draw(){
  background(255)
  console.log(playerChoice, computerChoice)

  if(playerChoice == 3){
    drawScissors(30);
  }
  else if (playerChoice == 2) {
    drawPaper(30);
  }
  else if (playerChoice == 1) {
    drawRock(30);
  }

  if(computerChoice == 3){
    drawScissors(250);
  }
  else if ( computerChoice == 2) {
    drawPaper(250);
  }
  else if (computerChoice == 1) {
    drawRock(250);
  }
  checkResult()
}
function checkResult(){
  //lose
  if((playerChoice == 2 && computerChoice ==3 )||
  (playerChoice == 1 && computerChoice == 2)||
  (playerChoice == 3 && computerChoice ==1)){
    text("you lose",300,500)
  }
    //win
    else if((playerChoice == 3 && computerChoice == 2)||
    (playerChoice == 2 && computerChoice == 1)||
    (playerChoice == 1 && computerChoice == 3)){
    text("you win",300,500)
  }
    //tie
    else if((playerChoice == 2 && computerChoice ==2 )||
    (playerChoice == 1 && computerChoice == 1)||
    (playerChoice == 3 && computerChoice == 3)){
      text("you tie",300,500)
    }
}
function drawRock(xPos){
//image(Img, xPos, yPos)
  ellipse(xPos+20, 250, 100, 100)
}
function drawPaper(xPos){
  rect(xPos+20, 250, 200, 200)
}
function drawScissors(xPos){
  rect(xPos+20, 250, 20, 20)
}

function keyPressed(){
  if (key == '3'){
    playerChoice = 3
  }else if(key=='2'){
    playerChoice = 2
  }else if(key=='1'){
    playerChoice = 1
  }
 computerPick()
}
function computerPick(){
  computerChoice = floor(random(1,4))
}
