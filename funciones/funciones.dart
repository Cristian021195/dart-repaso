
enum Planta  {
  permanente,
  transitoria,
  contratado,
  pasante
}
void main(){

  print(Planta.values); // [Planta.permanente, ]

  valorPlanta(Planta.pasante);

  print(saludoEdad(name:'Cristian', edad:25));

}

void valorPlanta(Planta planta){
  Planta result = Planta.values.firstWhere((e) => planta == e);
  print(result.index);
}

String saludoEdad({String? name="randmon", int? edad=200}){ // tal como javascript, podemos tener parametros predefinidos por si no nos pasan valores
  // aqui tambien vemos que existen los parametros nombrados, son guardados entre llaves {} de esta manera no importa el orden ingresado de parametros
  // se leera los valores correspondientes a la mapa / diccionario clave valor establecido. podemos aplicar lo mismo para las clases, constructores y metodos
  return 'Hola mi nombre es $name y mi edad es $edad';
}