class Moneda extends GameObject{
  private int diametro;
  
  public Moneda(){
  }
  
  public Moneda(PVector posicion){
    super(posicion);
  }
  
  public Moneda(PVector posicion, int diametro){
    super(posicion);
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
