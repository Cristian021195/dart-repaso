import 'dart:ffi';

enum Rango { // deben ser casteados para usar sus valores por indice
    primero,
    segundo,
    tercero
  } // generalmente usado para evaluar, swtich, if, sentencias de condicion de rapida vista, asociando posicion con palabra
void main(){
  Persona cristian = new Persona("Gramajo"); cristian.edad = 28; cristian.nombre = "Cristian"; cristian._apellido = "Dario";
  cristian.rango = Rango.primero;
  print(cristian.toString());

  Alumno julieta = new Alumno("Colque"); julieta.nombre = "julieta"; julieta.edad = 23; julieta.curso = "6to"; 
  print(julieta.presentarme());

  //print(Rango.values[3]); // Error, fuera de rango, van desde 0
  //print(Rango.values); // [Rango.primero, Rango.segundo, Rango.tercero]
}

class Persona {
  String? nombre; //siempre valores null safety
  int? edad;
  Rango? rango;
  String? _apellido; /* porque si podemos acceder al atributo _privado
    In dart '_' is used before the variable name to declare it as private. Unlike other programming languages, 
    here private doesn't mean it is available only to the class it is in, private means it is accessible in 
    the library it is in and not accessible to other libraries. https://www.javatpoint.com/dart-libraries #encapsulation in libraries
  */

  Persona(String apellido){
    this._apellido = apellido;
  }

  String? presentarme(){
    return 'presentacion desde clase padre';
  }

  @override
  String toString(){
    return  'Nombre: ${nombre} ${_apellido}, edad: ${edad}, rango: ${rango}';
  }
}

class Alumno extends Persona{//si tenemos un constructor de la case padre sobreescrito o usado tenemos que especificarlo
  Alumno(super.apellido); // A zero-argument constructor is literally a constructor that can be invoked with zero arguments. This includes constructors that take only optional arguments
  
  String? curso;

  String? presentarme(){//la sobrescritura de los metodos en clases hijas es automatica
    return 'Hola, soy ${nombre}, y soy alumno del curso ${curso}';
  }

}

class Extendida {
  String? nombre;
  String? apellido;
  String? dni;
  int? edad; // y supongamos que tenemos muchisimos atributos que queremos en el contructor

  Extendida(this.nombre, this.apellido, this.dni, this.edad); // de esta manera evitamos hacer this.atributo = atributo(del parametro del constructor)

  String presentacion(){
    return '${this.nombre}, ${this.apellido}, ${this.dni}, ${this.edad}';
  }

}

