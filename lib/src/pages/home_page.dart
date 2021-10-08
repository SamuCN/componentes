import 'package:componentes/src/providers/menu_providers.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes"),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot /*<List<dynamic>>*/ snapshot) {
        //print("builder");
        //print(snapshot.data);

        return ListView(
          children: _listaItems(snapshot.data),
        );


      },
    );
    //print(menuProvider.opciones);

    /*menuProvider.cargarData().then( (opciones){
      print('_lista');
      print(opciones);
    });*/

    /*return ListView(
      children: _listaItems(),
      
      );*/
  }

  List<Widget> _listaItems(List<dynamic> data) {
    
    final List<Widget> opciones = [];

    data.forEach( (element) {

      final widgetTemp = ListTile(
        title: Text(element['texto']),
        leading: Icon(Icons.account_balance, color: Colors.blue),
        trailing: Icon(Icons.keyboard),
        onTap: (){

        },
      ); 

      opciones..add(widgetTemp)
              ..add(Divider(color:Colors.black));
    });
    
    return opciones;
    
    
    /*return [
      Divider(color: Colors.black),
      ListTile(title: Text("Hola Mundo")),
      Divider(color: Colors.black),
      ListTile(title: Text("Hola Mundo")),
      Divider(color: Colors.black),
      ListTile(title: Text("Hola Mundo")),
    ];*/
  }
}
