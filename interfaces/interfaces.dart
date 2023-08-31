import 'dart:ffi';
void main(){
  Pato lucas = new Pato(); lucas.color = 'negro';
  PatoJuguete toy = new PatoJuguete(); toy.color = 'Amarillo';
  print('Lucas de color ${lucas.color} puede: ${lucas.caminar()}, ${lucas.cuak()}, ${lucas.nadar()}, ${lucas.volar()}');
  print('Toy de color ${toy.color} puede: ${toy.caminar()}, ${toy.cuak()}, ${toy.nadar()}');
}

class Ave{
  String? color;
  String? caminar(){
    return 'Caminando';
  }
}

class Pato extends Ave implements IVolar{
  String? cuak(){
    return 'Cuak!';
  }
  String? nadar(){
    return 'Nadando!';
  }
  String? volar(){
    return 'volando!';
  }
}

class PatoJuguete extends Ave{
  String? cuak(){
    return 'Cuak!';
  }
  String? nadar(){
    return 'Nadando!';
  }
}

class IVolar {
  String? volar(){
    return 'Volando!';
  }
}

/*class Ave{
  String? color;

  String? caminar(){
    return 'Caminando';
  }
}

class Pato extends Ave{
  String? cuak(){
    return 'Cuak!';
  }
  String? nadar(){
    return 'Nadando!';
  }
}*/
