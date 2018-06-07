class SymbolTail { //class declaration
    int x, y;
    int cont;
    int speed = (int) random(3, 6);
    int life;
    char chr;
    boolean alive;

    SymbolTail(int xini, int yini, int lifeini, char chrini) { //constructor with four parameters
        x = xini;
        y = yini;
        life = lifeini;
        cont = 0;
        chr  = chrini;
        alive = true;
    }

    void draw() {
        if ((int) random(0, 50) == 0 && cont > 10) {//generating a random number and checking it if it equals to zero
        chr = getRandomChar();// if it equals zero, get a random char.
        }

        fill(0, life*20, 0); // multiplying the visiblility of the tail by twenty in the green channel.
        text(chr, x * gridsize, y * gridsize); //restricting the symbols along a grid line.
        cont++;

        if (cont%speed == 0) { //if the mod of cont and speed equals zero, decrement the life of the array.
            life--;
            if (life <= 0) alive = false; //if life equals zero, then the visisbilty of the displayed line of code fades.
        }
    }
}


