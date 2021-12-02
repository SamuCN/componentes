
//import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/providers/menu_providers.dart';
import 'package:componentes/src/utils/icono_string_util.dart';
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
          children: _listaItems(snapshot.data, context),
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

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    
    final List<Widget> opciones = [];

    data.forEach( (element) {

      final widgetTemp = ListTile(
        title: Text(element['texto']),
        leading: getIcon(element['icon']),
        trailing: Icon(Icons.keyboard),
        onTap: (){
          /*final route = MaterialPageRoute(builder: (context){
              return AlertPage();
          });
          Navigator.push(context, route);
        },*/
        Navigator.pushNamed(context, element['ruta']);
        }
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
