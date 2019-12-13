import javax.swing.JOptionPane;
import javax.swing.*;

Object[] possibleValues = { "Male", "Female", };
Object selectedValue = JOptionPane.showInputDialog(null,
    "What gender would you like your snowperson to be?",
    "Christmas Time",
    JOptionPane.INFORMATION_MESSAGE, null,
    possibleValues, possibleValues[0]);
    
int[] numbers = new int[3];
int sum = 0;      

Snowman snowman1;
Tree tree1;

void setup()
{
  for (int i = 0; i < 3; i++) 
  {
    numbers[i] = Integer.parseInt(JOptionPane.showInputDialog(
    "Please enter an RGB value for your Christmas Baubles between 0 and 255", "100" )
      );
    sum += numbers[i];
    println("The sum of the RGB Values you have entered is : " + sum);
  }
  
  size(500,500);
  
  snowman1 = new Snowman(350,300,100,100);
  
  tree1 = new Tree(numbers[0], numbers[1], numbers[2]);

  background(#000066);
  strokeWeight(3);
  stroke(#cccccc);
  fill(#ffffff);
  ellipse(225,500,800,400);
  
  snowman1.displayarm1();
  
  snowman1.display();
  
  tree1.display();
  
  fill(#cccccc);
  textAlign(CENTER);
  textSize(18);
  text("Press the mouse buttons!", width/2, height/1.2);
}

void draw()
{

}

void mousePressed()
{  
  if (mouseButton == LEFT)
  {
    background(#000066);
    strokeWeight(3);
    stroke(#cccccc);
    fill(#ffffff);
    ellipse(225,500,800,400);
    
    snowman1.displayarm1();
    snowman1.display();
    tree1.display();
    
    fill(#cccccc);
    textAlign(CENTER);
    textSize(18);
    text("Press the mouse buttons!", width/2, height/1.2);
    
    int x = 20;
    int y = 20;
  
    for (int i = 0; i <= 50; i = i + 4) 
      for (int r = 0; r <= 50; r = r + 4)                                                 // Necessary so that xCoordinates do not always equal yCoordinates (straight line would occur instead)
    {
      stroke(#ffffff);
      ellipse(x*i, y*r,5,5);                                                                    // Even rows of stars
      ellipse((x*i) - 30, (y*r) - 30,5,5);                                                     // Odd rows of stars
    }
  }
  
  if (mouseButton == RIGHT)
  {
    background(#000066);
    strokeWeight(3);
    stroke(#cccccc);
    fill(#ffffff);
    ellipse(225,500,800,400);
    
    snowman1.displayarm2();
    snowman1.display();
    tree1.display();
    
    fill(#cccccc);
    textAlign(CENTER);
    textSize(18);
    text("Press the mouse buttons!", width/2, height/1.2);
    
    int x = 20;
    int y = 20;
    
    for (int i = 0; i <= 50; i = i + 4) 
      for (int r = 0; r <= 50; r = r + 4)                                                 // Necessary so that xCoordinates do not always equal yCoordinates (straight line would occur instead)
    {
      stroke(#ffffff);
      ellipse(x*i - 20, y*r - 20,5,5);                                                                    // Even rows of stars
      ellipse((x*i) - 50, (y*r) - 50,5,5);                                                     // Odd rows of stars
    }
  }
}
  
