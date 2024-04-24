class Moneda extends GameObject{
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
    ellipse(this.posicion.x,this.posicion.y,girar(),this.diametro);
  }
  
  public int girar(){
    int anchoMoneda = (int)(random(0,this.diametro));
    return anchoMoneda;
  }
}
