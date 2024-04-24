class Moneda{
  private PVector posicion;
  private int diametro;
  
  public Moneda(){
  }
  
  public Moneda(PVector posicion){
    this.posicion = posicion;
  }
  
  public Moneda(PVector posicion, int diametro){
    this.posicion = posicion;
    this.diametro = diametro;
  }
  
  public void display(){
    fill(#F7F707);
    circle(this.posicion.x,this.posicion.y,this.diametro);
  }
  
}
