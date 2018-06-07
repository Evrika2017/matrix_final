/*
Author: Andreas Lopez-Muro
Module: Foundations of Programming
CourseWork 1
*/

//Defined attributes within the class. Also defined a list object.
private int gridsize = 20; 
private int cont = 30; //int datatype that controls the continuity (speed) of the Matrix rain animation.
private String chrlist = "abcdefghijklmnopqrstuvwxyz0123456789";
private ArrayList symbolhead = new ArrayList();
private HeadAndTail hat;

//function setup to intialise the screen,size, background and font
public void setup() {
    //size(screen.width, screen.height, P2D);
    size(1200, 800, P2D);
    background(0);
    textFont(loadFont("MatrixCodeNFI-16.vlw"), 22);
    hat = new HeadAndTail(gridsize); 
  //Headandtail object to pass the grid size as an arguement.
}

//calling the show function of the head and tail to display the matrix.
public void draw() {
  hat.show();
}