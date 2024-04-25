class Enemigo extends GameObject{
  private PVector velocidad;
  private int diametro;
  
  public Enemigo(){
  }
  
  public Enemigo(PVector posicion){
    super(posicion);
  }
  public Enemigo(PVector posicion, PVector velocidad){
    super(posicion);
    this.velocidad = velocidad;
  }
  
  public Enemigo(PVector posicion, PVector velocidad, int diametro){
    super(posicion);
    this.velocidad = velocidad;
    this.diametro = diametro;
  }
  
  
  public void display(){
    fill(#1E18EA);
    strokeWeight(5);
    circle(this.posicion.x,this.posicion.y,this.diametro);
  }
  
  /**
  * permite mover el enemigo de manera vertical u horizantal
  * direccion = 0 moviento vertical - 1 movimiento horizontal
  */
  public void mover(int direccion, Habitacion habitacion){
    switch(direccion){
      case 0:{
        cambiarSentidoVelocidad(direccion,habitacion);
        this.posicion.y+=this.velocidad.y;
        break;
      }
      case 1:{
        cambiarSentidoVelocidad(direccion,habitacion);
        this.posicion.x+=this.velocidad.x;
        break;
      }
    }
  }
   
  private void cambiarSentidoVelocidad(int direccion, Habitacion habitacion){
    switch(direccion){
      case 0:{
        if(this.posicion.y - this.diametro/2 < habitacion.getPosicion().y){
          this.velocidad.y*=(-1);
          break;
        }
        if(this.posicion.y + this.diametro/2> habitacion.getPosicion().y+habitacion.getAlto()){
          this.velocidad.y*=(-1);
          break;
        }
      }
      case 1:{
        if(this.posicion.x - this.diametro/2 < habitacion.getPosicion().x){
          this.velocidad.x*=(-1);
          break;
        }
        if(this.posicion.x + this.diametro/2> habitacion.getPosicion().x+habitacion.getAncho()){
          this.velocidad.x*=(-1);
          break;
        }
      }
    }
       
  }
  
  public PVector getPosicion(){
    return this.posicion;
  }
  
}
