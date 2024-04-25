class SpawnerEnemigosVerticales extends SpawnerEnemigos{
  
  public SpawnerEnemigosVerticales(){
  }
  
  public SpawnerEnemigosVerticales(int cantEnemigos){
    super(cantEnemigos);
  }
  
  public void generarEnemigos(Habitacion habitacion){
    int diametroEnemigo = habitacion.getAncho()/GestorConstantes.CANT_CERAMICOS_PISO;
    enemigos[0] = new Enemigo(new PVector(habitacion.getPosicion().x+diametroEnemigo/2, 
                                          habitacion.getPosicion().y+diametroEnemigo/2),
                              new PVector(5,5),
                              diametroEnemigo);
                              
    enemigos[enemigos.length-1] = new Enemigo(new PVector(habitacion.getPosicion().x+habitacion.getAncho()-diametroEnemigo/2, 
                                          habitacion.getPosicion().y+diametroEnemigo/2),
                              new PVector(5,5),
                              diametroEnemigo);
    
    float distEntreEnemigosExtremos = enemigos[enemigos.length-1].getPosicion().x -
                                      enemigos[0].getPosicion().x;
    
    float distEntreEnemigosConsecutivos = distEntreEnemigosExtremos / (enemigos.length - 1);
    
    for(int i=1;i<enemigos.length-1;i++){
      enemigos[i] = new Enemigo(new PVector(enemigos[i-1].getPosicion().x+distEntreEnemigosConsecutivos, 
                                          habitacion.getPosicion().y+diametroEnemigo/2),
                              new PVector(5,5),
                              diametroEnemigo);
    }
  }
  
  public void moverEnemigos(Habitacion habitacion){
     for(Enemigo e:enemigos){
       if(e != null){
         e.mover(0, habitacion); //0 es direccion vertical
       }
     }
  }
  
}
