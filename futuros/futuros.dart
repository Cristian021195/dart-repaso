void main(){

  print("Antes de la peticion");
  //ejecucionAsincrona("https://horabondi/api/exprebus?dia=sabado&ruta=38")
  ejecucionAsincrona("")
  .then((data){
    print(data);
  }).catchError((e){
    print('ERROR: ${e}');
  });
  print("Despues de la peticion");
}

Future<String> ejecucionAsincrona(String mensaje){
  return Future.delayed(new Duration(seconds: 2), (){
    if(mensaje.length == 0){
      throw Exception("No se especifico url correcta");
    }
    return 'Body Data: ${mensaje}';
  });
}