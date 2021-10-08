import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

final opciones = ["Uno","Dos","Tres","Cuatro","Cinco"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes Temp"),
      ),
      body: ListView(
        //children: _crearItems()
        children: _crearItemsCortos()
      ),
    );
  }

  List<Widget> _crearItems(){
    
    List<Widget> lista = [];

    for (String opt in opciones){
      final tempWidget = ListTile(
        title: Text(opt),
      );

      //lista.add(Divider());
      lista.add(tempWidget);
      lista.add(Divider(color: Colors.red,));
    }
    return lista;
  }

  List<Widget> _crearItemsCortos(){
    
    var widgets =  opciones.map( ( item ) {
      return Column(
        children: [
          ListTile(
            title: Text (item + "!"),
            subtitle: Text("data"),
            leading: Icon(Icons.ac_unit),
            trailing: Icon(Icons.arrow_right),
            onTap: (){},

          ),
          Divider(color: Colors.black),
        ],
      );
    }).toList();
    return widgets;
  }
}