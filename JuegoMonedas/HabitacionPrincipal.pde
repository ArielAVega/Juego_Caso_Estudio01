class HabitacionPrincipal extends Habitacion{
  
  public HabitacionPrincipal(int ancho, int alto, PVector posicion){
    super(ancho,alto,posicion);
  }
  
  public void dibujarPiso(){
    noStroke();
    fill(255);
    square(this.posicion.x,this.posicion.y,this.ancho);
    int anchoCeramico = this.ancho/GestorConstantes.CANT_CERAMICOS_PISO;
    PVector posCeramico = new PVector(this.posicion.x,this.posicion.y);
    fill(#0CEADA);
    for(int f=1;f<=GestorConstantes.CANT_CERAMICOS_PISO;f++){
      if(f%2!=0){
        posCeramico.x=this.posicion.x;
      }else{
        posCeramico.x= this.posicion.x+anchoCeramico;
      }
      for(int c=1;c<=4;c++){
        square(posCeramico.x,posCeramico.y,anchoCeramico);
        posCeramico.x+=(2*anchoCeramico);
      }
      posCeramico.y+=anchoCeramico;
    }
  }
}
