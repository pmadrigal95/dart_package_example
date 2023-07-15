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


import 'package:dart_package_example/packages.dart' as packages;

void main(List<String> arguments) {

  packages.getReqResp_service();

  packages.getPais();

}
