class Enemigo extends GameObject{
  private PVector velocidad;
  
  public Enemigo(){
  }
  
  public Enemigo(PVector posicion){
    super(posicion);
  }
  public Enemigo(PVector posicion, PVector velocidad){
    super(posicion);
    this.velocidad = velocidad;
  }
  
  
  public void display(){
    fill(#1E18EA);
    strokeWeight(5);
    circle(this.posicion.x,this.posicion.y,40);
  }
  
  /**
  * permite mover el enemigo de manera vertical u horizantal
  * direccion = 0 moviento vertical - 1 movimiento horizontal
  */
  public void mover(int direccion){
    switch(direccion){
      case 0:{
        this.posicion.y+=this.velocidad.y;
        break;
      }
      case 1:{
        this.posicion.x+=this.velocidad.x;
        break;
      }
    }
  }
}
