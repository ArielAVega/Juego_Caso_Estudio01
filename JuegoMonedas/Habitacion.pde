abstract class Habitacion{
  protected int ancho;
  protected int alto;
  protected PVector posicion;
  
  public Habitacion(int ancho, int alto, PVector posicion){
    this.ancho= ancho;
    this.alto=alto;
    this.posicion=posicion;
  }
  
  public abstract void dibujarPiso();
  
  public PVector getPosicion(){
    return this.posicion;
  }
  
  public int getAncho(){
    return this.ancho;
  }
  
  public int getAlto(){
    return this.alto;
  }
}
