class Pla {

  // Atributs
  Punt[] punts;
  Punt[] puntsExtra;
  int numPunts;
  Punt a, b, c;


  //Constructor
  Pla(Punt...p) {
    this.numPunts = p.length;
    this.punts=new Punt [p.length];
    for (int i=0; i<p.length-1; i++) {
      this.punts[i]=p[i];
    }
    this.puntsExtra=new Punt[p.length];
    for (int i=0; i<puntsExtra.length; i++) {
      if (i==0) {
        a=new Punt("", punts[i].getX()*5, punts[i].getY()*5, punts[i].getZ()*5, 0);
        puntsExtra[i]=a;
      } else if (i==1) {
        b=new Punt("", punts[i].getX()*5, punts[i].getY()*5, punts[i].getZ()*5, 0);
        puntsExtra[i]=b;
      } else if (i==2) {
        c=new Punt("", punts[i].getX()*5, punts[i].getY()*5, punts[i].getZ()*5, 0);
        puntsExtra[i]=c;
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
    for (int i=0; i<numPunts-1; i++) {
      vertex(this.puntsExtra[i].x, this.puntsExtra[i].y, this.puntsExtra[i].z);
    }
    endShape(CLOSE);
    //text(Nom, x+r+10, y+r+10, z);

    // Dibuixa els punts del poligon
    for (int i=0; i<numPunts-1; i++) {
      this.punts[i].display();
      this.puntsExtra[i].display();
    }
  }
}
