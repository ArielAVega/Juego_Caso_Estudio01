abstract class SpawnerEnemigos{
  protected Enemigo[] enemigos;
  
  public SpawnerEnemigos(){
  }
  
  public SpawnerEnemigos(int cantEnemigos){
    enemigos = new Enemigo[cantEnemigos];
  }
  
  public abstract void generarEnemigos(Habitacion habitacion);
  
  public void visualizarEnemigos(){
    for(Enemigo e:enemigos){
      if(e != null){
        e.display();
      }
    }
  }
  
  public abstract void moverEnemigos(Habitacion habitacion);
  
}
