/**
 * Buenas practicas
 * 
 * 1. paquetes oficiales de dart
 * 2. paquetes de terceros
 * 3. paquetes customs
 * 
 * eficiencia al evitar cargar n veces paquetes iguales o que utilizan terceros / customs
 * 
 */

import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:dart_package_example/packages.dart' as dart_package_example;

void main(List<String> arguments) {

final url = Uri.parse('https://reqres.in/api/users?page=2');  
 
http.get(url).then((res) {

    final body = jsonDecode(res.body);

    print(body);

    print('page: ${ body['page'] }');

    print("per_page: ${ body['per_page'] }");

    print("id tercer elemento: ${ body['data'][2]['id'] }");
  
  });

}
