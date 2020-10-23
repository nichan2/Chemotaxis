
fish fishSpawn = new fish();


fish[] fishNum;


int arrayNum = 4;


void setup()  


{


 size(600,600);


 fishNum = new fish[arrayNum];


 for(int i = 0; i < fishNum.length; i++)


 {


   fishNum[i] = new fish();


 }


}  


void draw()  


{ 


  //background(((int)(Math.random()*255)),((int)(Math.random()*255)),((int)(Math.random()*255)));


  background(137,207,240);


  for(int i = 0; i < fishNum.length; i++)


  {


    fishNum[i].show();


    fishNum[i].walk();


  }


  fishSpawn.show();


  fishSpawn.walk();


} 


class fish  


{ 


 int fishX, fishY;


 fish()


 {


   fishX = fishY = 300;


 }


 void walk()


 {


   if(mouseX > fishX)


   {


     fishX = fishX + (int)(Math.random()*5)-1; //right


   }


   else


   {


     fishX = fishX + (int)(Math.random()*5)-3; //left


   }


   if(mouseY > fishY)


   {


     fishY = fishY + (int)(Math.random()*5)-1; //right


   }


   else


   {


     fishY = fishY + (int)(Math.random()*5)-3; //left


   }


   //bacteriaX2 = bacteriaX;


   //bacteriaY2 = bacteriaY;


   //bacteriaX = bacteriaX + (int)(Math.random()*3)-1;


   //bacteriaY = bacteriaY + (int)(Math.random()*3)-1;


 }


 void show()


 {


noStroke();
fill(220, 20, 60)
stoke(5)
triangle (fishX+125, fishY+100, fishX+175, fishY+65, fishX+175, fishY+135)
ellipse(fishX+100, fishY+100, 100, 70)
arc(fishX+100, fishY+110, 10, 30, 0, PI);
fill(0)
noStroke();
ellipse(100-20+myX, 100-10+myY, 13, 13);
fill(200,100,0);

fill(115, 102, 189)
stoke(5)
triangle (fishX+125, fishY+100, fishX+175, fishY+65, fishX+175, fishY+135)
ellipse(fishX+100, fishY+100, 100, 70)
arc(fishX+100, fishY+110, 10, 30, 0, PI);
fill(0)
noStroke();
ellipse(100-20+myX, 100-10+myY, 13, 13);
fill(200,100,0);

 }


} 


void mousePressed()


{






































  arrayNum = arrayNum + 1;


  redraw();


 


}


