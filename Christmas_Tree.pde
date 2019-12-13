class Tree
{
  //1. Attributes
  private int red;
  private int green;
  private int blue;
  
  //2. Constructors
  
  //Blank Constructor
  Tree()
  {
  }
  
  //Constructor with 3 parameters
  Tree(int redIn, int greenIn, int blueIn)
  {
    red = redIn;
    green = greenIn;
    blue = blueIn;
  }
  
  //3. Methods
  public void display()
  {
    //Tree Design
    fill(#993300);                                                          
    stroke(#662200);
    rect(150,300,30,35);                                                      //Tree Trunk
    
    fill(#009933);
    stroke(#004d1a);
    triangle(50,300,280,300,165,150);
    triangle(75,250,255,250,165,125);
    triangle(100,200,230,200,165,100);
    triangle(125,150,205,150,165,75);                                         //Tree Body
    
    
    
    //Christmas Baubles
    fill(green,red,blue);
    stroke(#000000);
    strokeWeight(1);
    ellipse(150,135,15,15);
    ellipse(175,115,15,15);
    
    fill(red,green,blue);
    ellipse(140,185,15,15);
    ellipse(170,165,15,15);
    ellipse(200,185,15,15);
    
    fill(green,red,blue);
    ellipse(110,235,15,15);
    ellipse(140,215,15,15);
    ellipse(170,235,15,15);
    ellipse(200,215,15,15);
    ellipse(230,235,15,15);    
   
    fill(red,green,blue);
    ellipse(90,285,15,15);
    ellipse(120,265,15,15);
    ellipse(150,285,15,15);
    ellipse(180,265,15,15);
    ellipse(210,285,15,15);
    ellipse(235,265,15,15);
    
    //Star
    fill(#ffff4d);
    strokeWeight(3);
    stroke(#ffff00);
    triangle(150,85,180,85,165,55);
    triangle(150,65,180,65,165,95);
  }
  
  //Getters
  
  public int getRed()
  {
    return red;
  }
  
  public int getGreen()
  {
    return green;
  }
  
  public int getBlue()
  {
    return blue;
  }
  
  //Setters
  
  public void setRed(int red) 
  {
    this.red = red;
    
    if ((red>=0) && (red<=255))
    {
      this.red = red;
    }
    
    else
    {
      this.red = 255;
    }
  }
  
  public void setGreen(int green) 
  {
    this.green = green;
    
    if ((green>=0) && (green<=255))
    {
      this.green = green;
    }
    
    else
    {
      this.green = 255;
    }
  }
  
  public void setBlue(int blue) 
  {
    this.blue = blue;
    
    if ((blue>=0) && (blue<=255))
    {
      this.blue = blue;
    }
    
    else
    {
      this.blue = 255;
    }
  }
}
