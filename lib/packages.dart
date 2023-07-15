import 'package:http/http.dart' as http;

import 'package:dart_package_example/classes/reqres_respuesta.dart';

import 'class/pais.dart';

void getReqResp_service() {

  // final url = 'https://reqres.in/api/users?page=2';
  final url = Uri.parse('https://reqres.in/api/users?page=2');
  http.get(url).then( (res) {
    
    final resReqRes = ReqResRespuesta.fromJson( res.body );
    // print(res);
    // final body = jsonDecode(res.body);
    // print(body);
    // print('page: ${ body['page'] }');
    // print('per_page: ${ body['per_page'] }');
    // print('id del tercer elemento: ${ body['data'][2]['id'] }');

    print('page: ${ resReqRes.page }');
    print('per_page: ${ resReqRes.perPage }');
    print('id del tercer elemento: ${ resReqRes.data[2].id }');

  });

}


// API 2:

void getPais() {

  final url = Uri.parse('https://restcountries.com/v3.1/alpha?codes=col');

  http.get(url).then( (res) { 

      final pais = paisFromJson( res.body );

      print("===========================");

    for (final data in pais) {

      print('Pais: ${data.name.common}');

      print('Población: ${data.population}');

      print('Fronteras:');

      for (final border in data.borders) {

        print('  ${border[0].toUpperCase() + border.substring(1).toLowerCase()}');

      }

      print('languages: ${data.languages.spa}');

      print('Latitud: ${data.latlng[0]}');

      print('Longitud: ${data.latlng[1]}');

      print('Moneda: ${data.currencies.cop.name}');

      print('Bandera: ${data.flags.svg}');

    }

    print("===========================");


   }).catchError( (error){ print(error); });

}