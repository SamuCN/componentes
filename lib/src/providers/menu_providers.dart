import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  List<dynamic> opciones = [];

  _MenuProvider() {
    //cargarData();
  }

  Future <List<dynamic>> cargarData() async {
    final rep = await rootBundle.loadString("data/menu_opts.json");
      //print(data);
      Map dataMap = json.decode(rep);
      print(dataMap["rutas"]);
      opciones = dataMap["rutas"];
    return opciones;
  }

}
  final menuProvider = _MenuProvider();

