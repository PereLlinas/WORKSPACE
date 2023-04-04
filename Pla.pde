class Pla {

  // Atributs
  Punt[] punts;
  Punt[] puntsExtra;
  int numPunts;
  Punt a, b, c;


  //Constructor
  Pla(Punt...p) {
    int numPunts=p.length;
    this.punts=new Punt [p.length];
    for (int i=0; i<p.length-1; i++) {
      this.punts[i]=p[i];
    }

    this.puntsExtra=new Punt[numPunts];
    for (int i=0; i<numPunts-1; i++) {
      if (i==0) {
        this.a=new Punt("", this.punts[i].getX()*5, this.punts[i].getY()*5, this.punts[i].getZ()*5, 1);
        puntsExtra[i]=this.a;
      } else if (i==1) {
        this.b=new Punt("", this.punts[i].getX()*5, this.punts[i].getY()*5, this.punts[i].getZ()*5, 1);
        puntsExtra[i]=this.b;
      } else {
        this.c=new Punt("", this.punts[i].getX()*5, this.punts[i].getY()*5, this.punts[i].getZ()*5, 1);
        puntsExtra[i]=this.c;
      }
    }
  }




  Punt getPunt(int i) {
    return this.punts[i];
  }

  void setPunt(int i, Punt p) {
    this.punts[i] = p;
  }

  void print() {
    System.out.println("Poligon: ");
    for (int i=0; i<numPunts-1; i++) {
      if (this.punts[i]!=null) {
        //this.punts[i].print();
      }
    }
  }


  void display() {
    // Dibuixa la línia entre els punts i l'interior
    stroke(255, 0, 0);
    strokeWeight(3);
    fill(255, 0, 0, 50);
    beginShape();
    for (int i=0; i<numPunts; i++) {
      //vertex(this.puntsExtra[i].x, this.puntsExtra[i].y, this.puntsExtra[i].z);
      vertex(this.punts[i].getX(), this.punts[i].getY(), this.punts[i].getZ());
    }
    endShape(CLOSE);
    //text(Nom, x+r+10, y+r+10, z);

    // Dibuixa els punts del poligon
    for (int i=0; i<numPunts; i++) {
      this.punts[i].display();
      this.puntsExtra[i].display();
    }
  }
}
