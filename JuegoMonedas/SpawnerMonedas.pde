class SpawnerMonedas{
  private Moneda[] monedas;
  
  public SpawnerMonedas(){
    monedas = new Moneda[4];
  }
  
  public void generarMonedas(Habitacion habitacion){
    int anchoCeramico = habitacion.getAncho()/GestorConstantes.CANT_CERAMICOS_PISO;
    int diametroMoneda = (int)(anchoCeramico*0.8);
    monedas[0] = new Moneda(new PVector(habitacion.getPosicion().x+(anchoCeramico/2),habitacion.getPosicion().y+(anchoCeramico/2)), diametroMoneda);
    monedas[1] = new Moneda(new PVector(habitacion.getPosicion().x+habitacion.getAncho()-(anchoCeramico/2),habitacion.getPosicion().y+(anchoCeramico/2)), diametroMoneda);
    monedas[2] = new Moneda(new PVector(habitacion.getPosicion().x+(anchoCeramico/2),habitacion.getPosicion().y+ habitacion.getAncho()-(anchoCeramico/2)), diametroMoneda);
    monedas[3] = new Moneda(new PVector(habitacion.getPosicion().x+habitacion.getAncho()-(anchoCeramico/2),habitacion.getPosicion().y+ habitacion.getAncho()-(anchoCeramico/2)), diametroMoneda);
  }
  
  public void visualizarMonedas(){
    for(Moneda m:monedas){
      if(m != null){
        m.display();
      }
    }
  }
}
