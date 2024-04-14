private Personaje personaje;
private JoyPad joyPad;
private Moneda moneda;
private Habitacion habitacion;

public void setup(){
  size(600,600);
  habitacion = new Habitacion(500,500,0,new PVector(0,0));
  personaje = new Personaje();
  personaje.setPosicion(new PVector(100,200));
  personaje.setVelocidad(new PVector(5,5));
  joyPad = new JoyPad();
  moneda = new Moneda(new PVector(100,100));
}

public void draw(){
  background(#5A5757);
  habitacion.dibujarPiso();
  personaje.display();
  moneda.display();
  if(joyPad.isUpPressed()){
    personaje.mover(0);
  }
  if(joyPad.isRightPressed()){
    personaje.mover(1);
  }
  if(joyPad.isDownPressed()){
    personaje.mover(2);
  }
  if(joyPad.isLeftPressed()){
    personaje.mover(3);
  }
  
  
}

public void keyPressed(){
  if(key=='w' || keyCode==UP){
      joyPad.setUpPressed(true);    
  }
  if(key=='s' || keyCode==DOWN){
      joyPad.setDownPressed(true);    
  }
  
  if(key=='d' || keyCode==RIGHT){
      joyPad.setRightPressed(true);    
  }
  
  if(key=='a' || keyCode==LEFT){
      joyPad.setLeftPressed(true);    
  }
}

public void keyReleased(){
  if(key=='w' || keyCode==UP){
      joyPad.setUpPressed(false);    
  }
  if(key=='s' || keyCode==DOWN){
      joyPad.setDownPressed(false);    
  }
  
  if(key=='d' || keyCode==RIGHT){
      joyPad.setRightPressed(false);    
  }
  
  if(key=='a' || keyCode==LEFT){
      joyPad.setLeftPressed(false);    
  }
}
