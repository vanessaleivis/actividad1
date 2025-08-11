import 'dart:collection';
import 'dart:io'; //ingresar datos
import 'dart:math';

void main() {
  //Ejercicios para empezar la movile

  while (true) {
    print("1 calcula tu distancia");
  print("2 chismea tus notas");
  print("3 averigue sus partidos ganados");
  print("4 datos de empleados");
  print("5 averigue el triangulo");
  print("6  transforme su temperatura");
  print("7 salir");

  print("escoja una de las opciones que valla a realizar: ");
  int? opcion = int.tryParse(stdin.readLineSync()!);



  switch (opcion) {
    case 1:
      print("ingrese la velocidad en m/s");
      double? velocidad = double.tryParse(stdin.readLineSync()!);

      print("ingrese el tiempo en segundos");
      double? tiempo = double.tryParse(stdin.readLineSync()!);

      double result = distancia(velocidad!,tiempo!);
      print("la distancia recorrida es $result");
      print('');
      break;

    case 2:
      print('ingrese su primera nota');
      double? nota1 = double.tryParse(stdin.readLineSync()!);
      print('ingrese su segunda nota');
      double? nota2 = double.tryParse(stdin.readLineSync()!);
      print('ingrese su tercera nota');
      double? nota3 = double.tryParse(stdin.readLineSync()!);
      

      
      double result = suma(nota1!, nota2!, nota3!); 
      print('Este es tu: $result');

      if (nota1 < nota2 && nota3 >= nota1) {
        print("perdiste el semestre manit@");
      } else {
        print("felicidades manito tu promedio es: $result ");
      }
      break;
    case 3:
      print("ingrese partidos ganados ");
      int? ganados = int.tryParse(stdin.readLineSync()!);

      print("ingrese partidos empatados");
      int? empatados = int.tryParse(stdin.readLineSync()!);

      print("ingrese partidos perdidos");
      int? perdidos = int.tryParse(stdin.readLineSync()!);

      int result = puntos (ganados!,empatados!,perdidos!);



    print("partidos ganados: $ganados , partidos empatados: $empatados, partidos perdidos: $perdidos");
      print("total de puntaje : $result");
      print('');

      break;
    case 4:
      print("nombre empleado");
      String? nombre = stdin.readLineSync();

      print("cantidad de horas laboradas en el mes ");
      double? horas = double.tryParse(stdin.readLineSync()!);

      print("tarifa horas");
      double? tarifas = double.tryParse(stdin.readLineSync()!);

      double result = devengado (horas!,tarifas!);
      print("tu platica es $result");
      print('');



      break;
    case 5:
      print("ingrese el valor de a");
      double? a = double.tryParse(stdin.readLineSync()!);

      print("ingrese el valor de b");
      double? b = double.tryParse(stdin.readLineSync()!);

      double result = hipotenusa(a!, b!, );
      sqrt(result);

      print("la hipotenusa del triangulo es : $result"); 


      break;
    case 6:
      print("ingrese la temperatura en grados celsius");
      double? celsius = double.tryParse(stdin.readLineSync()!);

      double result = fahrenheit(celsius!);

      print("la temperatura en fahrenheit es: $result °F");

      break;  
    case 7:
      int? salir = int.tryParse(stdin.readLineSync()!);
    break;
    default:
  }
    
  }
  
  
}
double distancia(double velocidad, double tiempo){
  return (velocidad * tiempo);
}

double suma(double nota1,double nota2,double nota3){
  return (nota1+nota2+nota3)/3;
}
int puntos(int ganados,int empatados,int perdidos){
  return(ganados * 3)+(empatados * 1)+(perdidos * 0);
}

double devengado(double horas, double tarifas){
  return(horas * tarifas);
}
double hipotenusa(double a, double b){
  return sqrt(pow(a, 2) + pow(b, 2));
}
double fahrenheit(double celsius){
  return (celsius * 1.8) + 32;

}












// recordar if , for , while , condiciones y manejo de funciones 