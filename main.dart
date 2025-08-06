import 'dart:collection';
import 'dart:io'; //ingresar datos
import 'dart:math';

void main() {
  //Ejercicios para empezar la movile

   
  print("1 calcula tu distancia");
  print("2 chismea tus notas");
  print("3 averigue sus partidos ganados");
  print("4 datos de empleados");
  print("5 averigue el triangulo");
  print("6  transforme su temperatura");

  print("escoja una de las opciones que valla a realizar: ");
  int? opcion = int.tryParse(stdin.readLineSync()!);

  int suma(int nota1, int nota2, int nota3) {
        return nota1 + nota2 + nota3;
      }


  switch (opcion) {
    case 1:
      print("ingrese la velocidad en m/s");
      double? velocidad = double.parse(stdin.readLineSync()!);

      print("ingrese el tiempo en segundos");
      double? tiempo = double.parse(stdin.readLineSync()!);

      double distancia = velocidad * tiempo;

      print("la distancia recorrida es $distancia metros.");
      break;
    case 2:
      print('ingrese su primera nota');
      int? nota1 = int.tryParse(stdin.readLineSync()!);
      print('ingrese su segunda nota');
      int? nota2 = int.tryParse(stdin.readLineSync()!);
      print('ingrese su tercera nota');
      int? nota3 = int.tryParse(stdin.readLineSync()!);

      
      int result = suma(nota1!, nota2!, nota3!);
      double promedio = result / 3;
      print('Este es tu: $promedio');

      if (nota1 < nota2 && nota3 >= nota1) {
        print("perdiste el semestre manit@");
      } else {
        print("felicidades manito tu promedio es: $promedio ");
      }
      break;
    case 3:
      print("ingrese partidos ganados ");
      int? perdidos = int.tryParse(stdin.readLineSync()!);

      print("ingrese partidos ganados");
      int? ganados = int.tryParse(stdin.readLineSync()!);

      print("ingrese partidos empatados");
      int? empatados = int.tryParse(stdin.readLineSync()!);

      int puntos = 0;

      if(ganados! > 0){
        puntos += ganados * 3;
      }else if (empatados! > 0){
        puntos += empatados * 1;
      }else{
        print("no tienes puntos");
      }

    print("partidos ganados: $ganados, partidos perdidos: $perdidos, partidos empatados: $empatados");
      print("total de puntaje : $puntos");
      break;
    case 4:
      print("nombre empleado");
      String? nombre = stdin.readLineSync();

      print("cantidad de horas laboradas en el mes ");
      int? horas = int.tryParse(stdin.readLineSync()!);

      print("tarifa horas");
      int? tarifas = int.tryParse(stdin.readLineSync()!);

      double devengado = horas!.toDouble() * tarifas!.toDouble();


      print("n\Plantilla");
      print("Nombre: \$nombre");
      print("horas laboradas: \$horas");
      print("tarifas: \$tarifas");
      print("Total devengado: \$\totaldevengado");


      break;
    case 5:
      print("ingrese el valor de a");
      int? a = int.tryParse(stdin.readLineSync()!);

      print("ingrese el valor de b");
      int? b = int.tryParse(stdin.readLineSync()!);

      double h = sqrt(pow(a!, 2) + pow(b!, 2));

      print("la hipotenusa del triangulo es : $h"); 


      break;
    case 6:
      print("ingrese la temperatura en grados celsius");
      double? celsius = double.tryParse(stdin.readLineSync()!);

      double fahrenheit = (celsius! * 1.8) + 32;

      print("la temperatura en fahrenheit es: $fahrenheit °F");

      break;  
    default:
  }
}
















// recordar if , for , while , condiciones y manejo de funciones 