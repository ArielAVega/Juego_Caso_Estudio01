class Moneda{
  private PVector posicion;
  
  public Moneda(){
  }
  
  public Moneda(PVector posicion){
    this.posicion = posicion;
  }
  
  public void display(){
    fill(#F7F707);
    circle(this.posicion.x,this.posicion.y,40);
  }
  
}
