class Snowman
{
  //1. Attributes
  private float x;                                                                                //x value
  private float y;                                                                                //y value
  private float w;                                                                                //width
  private float h;                                                                                //height
  
  //2. Constructors
  
  //Blank Constructor
  Snowman()
  {
  }
  
  //Constructor with 4 parameters
  Snowman(float xIn, float yIn, float wIn, float hIn)
  {
    x = xIn;
    y = yIn;
    w = wIn;
    h = hIn;
  }
  
  //3. Methods  
  public void display()
  {
    fill(#1a0d00);
    stroke(#1a0d00);
    line(x-20,y-70,x-80,y-40);
    line(x-80,y-40,x-90,y-50);
    line(x-80,y-40,x-85,y-30);                                                                      //Left Arm
    
    fill(#ffffff);
    stroke(#cccccc);
    ellipse(x,y,w,h);
    ellipse(x,y-50,w-25,h-25);
    ellipse(x,y-100,w-50,h-50);                                                                    //Snow body
    
    fill(#000000);
    strokeWeight(1);
    stroke(#000000);
    ellipse(x-10,y-105,w-95,h-95);
    ellipse(x+10,y-105,w-95,h-95);                                                                 //Button eyes
    
    ellipse(x-12,y-90,w-95,h-95);
    ellipse(x+12,y-90,w-95,h-95);                                                                  //Button mouth
    
    ellipse(x,y-60,w-93,h-93);
    ellipse(x,y-45,w-93,h-93);
    ellipse(x,y-30,w-93,h-93);
    
    fill(#ff9933);
    strokeWeight(3);
    stroke(#ff8000);
    triangle(x,y-100,x,y-95,x+10,y-97.5);                                                          //Carrot nose
    
    if (selectedValue.equals("Male"))
    {
      stroke(#0080ff);
      fill(#3399ff);                                                                               //Blue
    }
    
    else
    {
      stroke(#ff33bb);
      fill(#ff66cc);                                                                               //Pink
    }
    
    ellipse(x,y-80,w-40,h-80);
    rect(x-25,y-90,w-59,h-80);
    rect(x+5,y-90,w-80,h-55);
    rect(x+7,y-45,w-95,h-93);
    rect(x+17,y-45,w-95,h-93);                                                                     //Scarf
    
    rect(x-20,y-120,w-60,h-93);
    triangle(x-20,y-120,x+20,y-120,x,y-140);
    ellipse(x,y-140,w-90,h-90);
  }
  
  public void displayarm1()
  {
    fill(#1a0d00);
    stroke(#1a0d00);
    line(x+20,y-70,x+80,y-40);
    line(x+80,y-40,x+90,y-50);
    line(x+80,y-40,x+85,y-30);                                                                    //Right Arm Down
  }
  
  public void displayarm2()
  {
    fill(#1a0d00);
    stroke(#1a0d00);
    line(x+20,y-70,x+80,y-80);
    line(x+80,y-80,x+90,y-90);
    line(x+80,y-80,x+85,y-70);                                                                   //Right Arm Up
  }
  
  //Getters
  
  public float getX()
  {
    return x;
  }
  
  public float getY()
  {
    return y;
  }
  
  public float getWidth() 
  {
    return w;
  }
  
  public float getHeight() {
    return h;
  }
  
  //Setters
  
  public void setX(float x) 
  {
    this.x = x;
    
    if ((x>=100) && (x<=400))
    {
      this.x = x;
    }
    
    else
    {
      this.x = 350;
    }
  }
  
  public void setY(float y) 
  {
    this.y = y;
    
    if ((y>=200) && (y<=400))
    {
      this.y = y;
    }
    
    else
    {
      this.y = 300;
    }
  }
  
  public void setWidth(float w) 
  {
    this.w = w;
    
    if ((w>=50) && (w<=200))
    {
      this.w = w;
    }
    
    else
    {
      this.w = 100;
    }
  }
  
  public void setHeight(float h) 
  {
    this.h = h;
    
    if ((h>=50) && (h<=200))
    {
      this.h = h;
    }
    
    else
    {
      this.w = 100;
    }
  }
  
}
