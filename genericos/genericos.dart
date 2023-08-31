import "dart:collection";
enum Size {
  small,
  medium,
  large
}
void main(){
  Set <String>setSizes = {"Algo.small", "Algo.medium", "Algo.large"};
  List <String>listString = ["Algo.small", "Algo.medium", "Algo.large"]; // alternativa
  List <int> listNumber = [1,2,3];


  Size size = stringToEnum<Size>("large", Size.values);
  String size2 = stringToEnum<String>("medium", setSizes.toList() as Iterable<String>);
  //String size2 = stringToEnum<String>("medium", listSizes as Iterable<String>);
  print(size);
  print(size2);

  List<int> a = obtenerArreglo<int>(listNumber);
  a.add(4);
  print(listNumber);
  print(a);

}
/* Genericos - Generics: 
  - Principalmente usados en la definicion de funciones / metodos / constructores de clases / clases,
  - Utilizaremos Generics como forma o técnica de definir múltiples tipos de datos con una sola variable. 
  Lo cual nos permite crear código reusable de una forma segura, que además funciona con cualquier tipo de dato.
  - Proporcionan una manera de indicar a las funciones, clases o interfaces qué tipo quiere usar al llamarlas.
 */


List<T> obtenerArreglo<T>(List<T> lista){ // la funciones en dart son como javascript, siempre pasan valores por referencia
  return lista;
}
T stringToEnum<T>(String str, Iterable<T> values) {
  return values.firstWhere(
    (value) => value.toString().split('.')[1] == str,
    //orElse: () => null,
  );
}