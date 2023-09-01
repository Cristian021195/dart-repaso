import 'dart:io';
import 'dart:convert';
void main() {
  /*
  HttpClient()
    .getUrl(Uri.parse('https://reqres.in/api/users/2')) // produces a request object
    .then((request) => request.close()) // sends the request
    .then((response) =>
      response.transform(Utf8Decoder()).listen(print)); // transforms and prints the response
      */
  Peticionar();
}


Future<dynamic> Peticionar() async{
  try {
    var resp = await HttpClient().getUrl(Uri.parse('https://reqres.in/api/users/2'));
    var data = await resp.close();
    var result = data.transform(Utf8Decoder()).listen(print);  
  } catch (e) {
    print("ERROR INESPERADO: ${e}");
  }  
}