private Personaje personaje;
private JoyPad joyPad;
private Habitacion habitacion;
private SpawnerMonedas spawnerMonedas;
private Enemigo enemigo;

public void setup(){
  size(600,600);
  habitacion = new Habitacion(400,400,0,new PVector(100,100));
  spawnerMonedas = new SpawnerMonedas();
  spawnerMonedas.generarMonedas(habitacion);
  personaje = new Personaje();
  personaje.setPosicion(new PVector(100,200));
  personaje.setVelocidad(new PVector(5,5));
  joyPad = new JoyPad();
  enemigo = new Enemigo(new PVector(width/2, height/2));
}

public void draw(){
  background(#5A5757);
  habitacion.dibujarPiso();
  spawnerMonedas.visualizarMonedas();
  personaje.display();
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
  enemigo.display();  
  
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
