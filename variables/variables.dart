import 'dart:ffi';
import 'dart:collection'; 

/*  PARA MAS INFORMACION SOBRE OBJETOS ITERABLES: Arreglos, Listas, Sets, Queues, LinkedLists, 
  Hashes visitar https://felipeemidio.medium.com/dart-on-focus-lists-sets-and-queues-5ebe9417d106
*/
/* Enumeradores - Enums , fuera de funciones, metodos y definiciones*/
  enum Size {
    small,
    medium,
    large
  }

late String description; //Asignación tardía, https://blog.tech-andgar.me/dart-late-keyword-1
void main(){
  var letra = 'a'; letra = 'b'; // no recomendable
  String? nombre = "Cristian"; var apellido = "Gramajo";
  int edad = 28; var vacio = null; // las variables de tipo var no pueden ser null safety
  double altura = 1.62;
  num cualquiera = 2.54;
  description = 'Feijoada!';
  nombre = null;
  const double PI = 3.14; // cosntante en tiempo de compilacion (son implicitamente final type), pueden ser tipadas o no
  //is at the class level, mark it static const
  final name = 'Bob'; // no tipada, son como constantes ya que no podemos cambiar su valor
  final String nickname = 'Bobby';

  final runes = nickname.runes.toList(); // arreglo de caracteres ascii / unicode value: [1,62,35,...]

  

  /* Listas - Lists */
  
  List<int> fixedList = List.of([1, 2, 3], growable: false);
  //fixedList.add(4); // throws an error
  List<int> listEx = []; listEx.add(341); listEx.add(1); listEx.add(23); // tipo de dato lista con generico entero, solo acepta enteros
  List<dynamic> lista_cualquiera = [1,2.5,"a"]; // recibe cualquier typo de dato

  Set<String> set1 = {"Cloud", "Vincent", "Cloud"};// no admite el ultimo Cloud, duplicado.
  Set<String> set2 = {"Vincent", "A","B"};
  print("UNION: ${set1.union(set2)}");
  Set <int> SetEx = new Set <int>(); SetEx.add(12); SetEx.add(3); SetEx.add(4); // tipo de dato set, no repite valores.
  // Already added once, hence wont be added
  SetEx.add(3); //[12,3,4]


  //Arreglos
  final int_arr = <int>[5];
  final final_arr = const <int>[1,2,3,4]; // limitamos el tamanio
  const const_arr = [];

  int_arr.add(1);
  //final_arr.add(1); al ser constante el arreglo es inmutable siempre

  //casteos
  double a = 14.16;
  final casteado = a as double; // [a as double]

  /* parseos, spread y casteos */
  const Object i = 3; // Where i is a const Object with an int value...
  const list = [i as int]; // Use a typecast.
  const map = {if (i is int) i: 'int'}; // Use is and collection if.
  const set = {if (list is List<int>) ...list}; // ...and a spread.

  /* Diccionarios / Maps */
  Map mp = {'Ankur':1,'Arnav':002,'Shivam':003}; // por defecto / implicitamente son <dynamic, dynamic>

  final Map<String, String> gifts = {// k : v
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };

  final Map<int, dynamic> nobleGases = const { // no mutable
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };
  //nobleGases[2] = 'asd'; no funciona xq es const
  gifts['six'] = '6to';

  /* Colas / Queue */
  Queue<int> q = new Queue<int>(); // <dynamic> por defecto /*ListQueue should be used every time you want to avoid a programmer making an insertion in the middle of a list*/
  q.addLast(1); q.addLast(2); q.addFirst(3); q.addLast(4); q.removeFirst(); //[1,2,4]

  print("EL TIPO DE DATO DE cualquiera es: ${cualquiera.runtimeType}");
  print('Hola mi nombre es ${nombre}, y mi apellido es ${apellido}, tengo ${edad-1}, vacio: ${vacio}');
  print(final_arr);
  print(int_arr);
  print("valor casteado: ${casteado}");

  print(gifts);
  print("Longitud del map: ${nobleGases.length}");
  assert(gifts['first'] == 'partridge');


  var listadito = [1, 2, 3];
  var list2 = [0, ...?listadito]; // con null safety
  assert(list2.length == 4);
}