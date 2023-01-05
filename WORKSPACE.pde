//Punts plans
Punt ph1, ph2, ph3, ph4, pv1, pv2, pv3, pv4, pp1, pp2, pp3, pp4, plt1, plt2, plt3;

//Punts creats per s'usuari
Punt A, B, C, D;

//Plans base
Pla PH, PV, PP, LT;

//Plans creats
Pla ALFA;

//Recta
Recta r;

//càmera (origen de coordenades se posa al centre)
import peasy.*;
PeasyCam jcam;
float zoomValue=1000.0;

void setup() {
  size(1000, 1000, P3D);
  jcam=new PeasyCam(this, 2000); //profunditat màx.
  //posar begin(HUD) d'es planetari per tot lo que no vulgui que se mogui

  ph1=new Punt("PH", 1200, 800, 0, 1, 255);
  ph2=new Punt("", 1200, -800, 0, 1, 255);
  ph3=new Punt("", -1200, -800, 0, 1, 255);
  ph4=new Punt("", -1200, 800, 0, 1, 255);

  pv1=new Punt("PV", 1200, 0, 800, 1, 255);
  pv2=new Punt("", -1200, 0, 800, 1, 255);
  pv3=new Punt("", -1200, 0, -800, 1, 255);
  pv4=new Punt("", 1200, 0, -800, 1, 255);

  pp1=new Punt("PP", 0, 800, 800, 1, 255);
  pp2=new Punt("", 0, -800, 800, 1, 255);
  pp3=new Punt("", 0, -800, -800, 1, 255);
  pp4=new Punt("", 0, 800, -800, 1, 255);

  plt1=new Punt("", -1200, 0, 0, 1, 255);
  plt2=new Punt("", 1200, 0, 0, 1, 255);
  plt3=new Punt("", 0, 0, 0, 1, 255);

  PH=new Pla(ph1, ph2, ph3, ph4);
  PV=new Pla(pv1, pv2, pv3, pv4);
  PP=new Pla(pp1, pp2, pp3, pp4);
  LT=new Pla(plt1, plt2, plt3);

  //Elements creats per jo
  A=new Punt("A, ALFA", 250, 250, 1300, 2, 2);
  B=new Punt("B", 650, 650, 500, 2, 2);
  C=new Punt("C", -100, -300, -800, 2, 2);
  D=new Punt("D", -400, -1000, -600, 2, 2);


  ALFA=new Pla(A, B, C);

  r=new Recta("r", C, D);
}

void draw() {
  background(255);
  //Display elements creats
  A.display();
  B.display();
  C.display();
  ALFA.display();
  r.display();


  //Display plans i punts base
  ph1.display();
  pv1.display();
  pp1.display();
  PH.display();
  PV.display();
  PP.display();
  LT.display();
  
/*  //Display plans i punts base
  pushMatrix();
  scale((float)jcam.getDistance()/2000);
  ph1.display();
  pv1.display();
  pp1.display();
  PH.display();
  PV.display();
  PP.display();
  LT.display();
  popMatrix();
  */
}
