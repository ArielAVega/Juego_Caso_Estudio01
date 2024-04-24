class Habitacion{
  private int ancho;
  private int alto;
  private int tipoHab;
  private PVector posicion;
  
  public Habitacion(int ancho, int alto, int tipoHab, PVector posicion){
    this.ancho= ancho;
    this.alto=alto;
    this.tipoHab=tipoHab;
    this.posicion=posicion;
  }
  
  public void dibujarPiso(){
    noStroke();
    fill(255);
    square(this.posicion.x,this.posicion.y,this.ancho);
    int anchoCeramico = this.ancho/8;
    PVector posCeramico = new PVector(this.posicion.x,this.posicion.y);
    fill(#0CEADA);
    for(int f=1;f<=8;f++){
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
  
  public PVector getPosicion(){
    return this.posicion;
  }
  
  public int getAncho(){
    return this.ancho;
  }
}
