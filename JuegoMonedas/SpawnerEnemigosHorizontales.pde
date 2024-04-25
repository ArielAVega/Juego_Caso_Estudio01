class SpawnerEnemigosHorizontales extends SpawnerEnemigos{
  
  public SpawnerEnemigosHorizontales(){
  }
  
  public SpawnerEnemigosHorizontales(int cantEnemigos){
    super(cantEnemigos);
  }
  
  public void generarEnemigos(Habitacion habitacion){
  }
  
  public void moverEnemigos(Habitacion habitacion){
    for(Enemigo e:enemigos){
       if(e != null){
         e.mover(1, habitacion); //1 es direccion horizontal
       }
     }
  }
}
