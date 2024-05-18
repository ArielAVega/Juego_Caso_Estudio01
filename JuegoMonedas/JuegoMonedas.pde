private Personaje personaje;
private JoyPad joyPad;
private Habitacion[] habitaciones;
private SpawnerMonedas spawnerMonedas;
private SpawnerEnemigos[] spawnerEnemigos;

public void setup(){
  size(740,500);
  habitaciones = new Habitacion[3];
  habitaciones[0] = new HabitacionPrincipal(400,400,new PVector(134,50));
  habitaciones[1] = new HabitacionContigua(134,250,new PVector(0,125));
  habitaciones[2] = new HabitacionContigua(200,200,new PVector(534,150));
  spawnerMonedas = new SpawnerMonedas();
  spawnerMonedas.generarMonedas(habitaciones[0]);
  personaje = new Personaje();
  personaje.setPosicion(new PVector(100,200));
  personaje.setVelocidad(new PVector(5,5));
  joyPad = new JoyPad();
  generarEnemigos();
}

public void draw(){
  background(#5A5757);
  dibujarHabitaciones();
  spawnerMonedas.visualizarMonedas();
  visualizarEnemigos();
  moverEnemigos();
  
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
  
}

public void generarEnemigos(){
  spawnerEnemigos = new SpawnerEnemigos[2];
  spawnerEnemigos[0] = new SpawnerEnemigosVerticales(4);
  spawnerEnemigos[1] = new SpawnerEnemigosHorizontales(4);
  
  for(SpawnerEnemigos sp:spawnerEnemigos){
    sp.generarEnemigos(habitaciones[0]);
  }
}

public void visualizarEnemigos(){
  for(SpawnerEnemigos sp:spawnerEnemigos){
    sp.visualizarEnemigos();
  }
}

public void moverEnemigos(){
  for(SpawnerEnemigos sp:spawnerEnemigos){
    sp.moverEnemigos(habitaciones[0]);
  }
}

public void dibujarHabitaciones(){
  for(Habitacion h:habitaciones){
    h.dibujarPiso();
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
