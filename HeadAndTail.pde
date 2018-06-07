class HeadAndTail { //Class declaration

//Declaring the class contructor with one parameter
  public HeadAndTail(int gridsize){
    //pass the gridsize to used by the symbolhead object

    SymbolHead letra = new SymbolHead((int) random(width/gridsize), -1); //width/gridsize/2, height/gridsize/4); //(int) random(width), (int) random(height));
    symbolhead.add(letra);
    //creating the symbol head object and adding it to the array list

}
public void show() {
    fill(0, 0, 0, 50);
    rect(0, 0, width, height);
    

  fillSymbolHead(); //calling the fill function to the symbolhead object
  display(); //to display the symbolhead randomising through the array indexs.
   
}

}
//to create a symbolhead object to put into the array. This will randomise the characters.
public void fillSymbolHead(){
  if ((int) random(0, cont) == 0) {
        SymbolHead letra = new SymbolHead((int) random(width/gridsize), -1); //width/gridsize/2, height/gridsize/4); //(int) random(width), (int) random(height));
        symbolhead.add(letra);//adding the symbolhead to the array
        if(cont > 5) cont--;//if the continuity is greater than five, then the continuity decrease. Therefore randomising the speed of the line of characters.
    }

} 

//displays the symbolhead. loops through the symbolhead list then extracts each head and displays them.
public void display(){

 for (int i = 0; i < symbolhead.size(); i++) {
        SymbolHead letra = (SymbolHead) symbolhead.get(i);//calling the function to extract a character from the array.
        letra.draw();//characters are displayed
        if(!letra.alive) { symbolhead.remove(i); } //if the symbolhead dissappears or fades, then its removed from the array list to save data.
    }
}
//a function to retrieve a random char from a string of char and then returns it.
public char getRandomChar() {
    return chrlist.charAt((int) random(chrlist.length()));//incase if anything is added to the array. it will dynamically accommodate the new length.
}
