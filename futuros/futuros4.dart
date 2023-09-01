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
    var result = data.transform(Utf8Decoder());
    result.listen((event) { print(event);});
  } catch (e) {
    print("ERROR INESPERADO: ${e}");
  }  
}

class Usuario {
  int? id;
  String? email;
  String? first_name;
  String? last_name;
  String? avatar;

  Usuario(this.id, this.email, this.first_name, this.last_name, this.avatar);

  factory Usuario.fromJson(dynamic json) {
    return Usuario(json['id'] as int, json['email'] as String, json['first_name'] as String, json['last_name'] as String, json['avatar'] as String);
  }

  String presentarUsuario() {
    return "Hola, mi nombre es ${this.first_name}";
  }
}

/*
"data": {
        "id": 2,
        "email": "janet.weaver@reqres.in",
        "first_name": "Janet",
        "last_name": "Weaver",
        "avatar": "https://reqres.in/img/faces/2-image.jpg"
    },
*/