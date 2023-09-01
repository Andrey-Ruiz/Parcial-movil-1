//Andrey Alessandro Ruiz Mass 

class Producto{
  
  double precio;
  int dia;
  int mes;
  int year;

  Producto(this.precio, this.dia, this.mes, this.year);
  

  void descuento(int Dcompra, int Dmes, int Dyear){
    int cadu = dia - Dcompra;
    if(cadu <=15){
      double desc = precio*0.15;
      precio = precio - desc;
    }
  }
}