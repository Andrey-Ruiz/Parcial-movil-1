//Andrey Alessandro Ruiz Mass 
import 'dart:io';

class Producto{
  String Nombre;
  String Tipo;
  double Precio;
  int Dia;
  int Mes;
  int Year;

  Producto(this.Nombre, this.Tipo, this.Precio, this.Dia, this.Mes, this.Year);

  void descuento(int Dcompra, int Dmes, int Dyear){
    int cadu = Dia - Dcompra;
    if(cadu <=15 && Mes <= Dmes && Year <= Dyear){
      double desc = Precio*0.15;
      Precio = Precio - desc;
    }
  }
}

void main(){
  String? nom = '';
  String? tipo = '';
  double precio = 0.0;
  int dia = 0;
  int mes = 0;
  int year = 0;
  List factu = [];
  double i = 0;
  print('Bienvenido, porfavor ingrese dia de pago');
  print('Dia:');
  String? d = stdin.readLineSync();
  int diax = int.parse(d!);
  print('Mes:');
  String? m = stdin.readLineSync();
  int mesx = int.parse(m!);
  print('Año:');
  String? y = stdin.readLineSync();
  int yearx = int.parse(y!);
  int opc = 0;
  do{
    print('1. Agregar producto');
    print('2. Ver total actual');
    print('3. Terminar y cancelar total');
    String? aux = stdin.readLineSync();
    opc = int.parse(aux!);
    switch(opc){
      case 1:
      print('Nombre:');
      String? n = stdin.readLineSync();
      nom = n;
      print('Tipo:');
      String? t = stdin.readLineSync();
      tipo = t;
      print('Precio:');
      String? p = stdin.readLineSync();
      precio = double.parse(p!);
      print('Dia de caducidad:');
      String? d = stdin.readLineSync();
      dia = int.parse(d!);
      print('Mes de caducidad:');
      String? m = stdin.readLineSync();
      mes = int.parse(m!);
      print('Año de caducidad:');
      String? y = stdin.readLineSync();
      year = int.parse(y!);
      var miproducto = Producto(nom!, tipo!, precio, dia, mes, year);
      miproducto.descuento(diax, mesx, yearx);
      factu.add(miproducto.Nombre);
      i = i+miproducto.Precio;
      break;
      case 2:
      print('precio total actual es: $i');
      break;
    }
  }while(opc != 3);
  print(factu);
  print('precio final es $i');
}