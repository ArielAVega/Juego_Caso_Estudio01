class Personaje extends GameObject{
  private PVector velocidad;
  
  public void display(){
    fill(255,0,0);
    strokeWeight(5);
    circle(this.posicion.x,this.posicion.y,40);
  }
  
  /**
  * Mueve el atributo posicion una cantidad indicada por velocidad
  * direccion Indica la dirección del movimiento (0: arriba, 1: deecha, 2:abajo, 3:izquierda
  */
  public void mover(int direccion){
      switch(direccion){
        case 0:{
          this.posicion.y-=this.velocidad.y;
          break;
        }
        case 1:{
          this.posicion.x+=this.velocidad.x;
          break;
        }
        case 2:{
          this.posicion.y+=this.velocidad.y;
          break;
        }
        case 3:{
          this.posicion.x-=this.velocidad.x;
          break;
        }
      }
   
  }
  
  public void setPosicion(PVector posicion){
    this.posicion=posicion;
  }
  
  public void setVelocidad(PVector velocidad){
    this.velocidad=velocidad;
  }
  
}
