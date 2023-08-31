
enum Planta  {
  permanente,
  transitoria,
  contratado,
  pasante
}
void main(){

  print(Planta.values); // [Planta.permanente, ]

  valorPlanta(Planta.pasante);

}

void valorPlanta(Planta planta){
  Planta result = Planta.values.firstWhere((e) => planta == e);
  print(result.index);
}