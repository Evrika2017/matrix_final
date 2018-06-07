class SymbolHead { //declaration of class
    int x, y;
    int cont;
    int speed = (int) random(3, 6);
    char chr;
    boolean alive;
    ArrayList tail = new ArrayList();

    SymbolHead(int xini, int yini) { //constructor of class calls the object with two parameters to intialise the x and y coordinates
        x = xini;
        y = yini;
        chr = getRandomChar();
        cont = 0;
        alive = true; //time which the symbols are visible before they fade.
    }


  public void filling(){ //mod of cont and speed equals zero, then add a new character to the symboltail array with a char
     if (cont%speed == 0) {
            if ((int) random(5) != 0) {
                tail.add(new SymbolTail(x, y, (int) random(10, 20), chr));
                chr = getRandomChar(); //calling the random function for the char.
                y++; //as a new character is created, the line of code  will continue to move vertically downwards.
            }

            if (y > height/gridsize + 40) { //if the line is no longer within the frame boundries, then the line is dead/terminated and it will be removed from the array.
                alive = false;
                tail.clear(); //refreshes the array of the symbolhead array.
            }
        }
    
    }
     public void display(){  //extracting tail objects and displaying it.
     for (int i = 0; i < tail.size(); i++) {
            SymbolTail tailObject = (SymbolTail) tail.get(i);//casting from object to symboltail.
            tailObject.draw(); //

            if (tailObject.alive == false) tail.remove(i);//if the tail is no longer visible, remove from the array.
        }
    
    }
    //standard draw function that triggers the above two functions "filling" and "display"
        void draw() {
        int rnd = (int) random(170, 255);
        fill(rnd, 255, rnd);
        text(chr, x * gridsize, y * gridsize);// allign the text to the grid
        cont++; //randomises the speed as it moves down.
        
        filling();
        display();
       
    }
}

