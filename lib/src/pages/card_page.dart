import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Page'),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          /*SizedBox(
            height: 200.0,
          ),*/
          _cardTipo1(context),
          SizedBox(
            height: 30.0,
          ),

          _cardTipo2(),

           SizedBox(
            height: 30.0,
          ),

          _cardTipo1(context),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),

           SizedBox(
            height: 30.0,
          ),

          _cardTipo1(context),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),

        ],
      ),
    );
  }

  Widget _cardTipo1(BuildContext context) {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text("Titulo de la tarjeta"),
            subtitle: Text("Descripcion"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                child: Text('Cancelar'),
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
              ),
              TextButton(
                child: Text('Ok'),
                onPressed: () {
                  _mostrarImagen(context);
                  
                }
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    final card = /*Card*/Container(
      /*clipBehavior: Clip.antiAlias,*/ 
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://www.theolivepress.es/wp-content/uploads/2019/02/High-frontier.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
            //fit: BoxFit.fill
          ),
          /*Image(
            image: NetworkImage('https://www.theolivepress.es/wp-content/uploads/2019/02/High-frontier.jpg')
          ),*/
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('No tengo ni idea de que poner')
          ),
        ],
      ),
    );
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.red,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0)
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card
      ),
    );
  }

  void _mostrarImagen(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true, 
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          content: 
            Image(
              image: AssetImage("assets/madrid.png"),
              height: 187 ,
            ),
            clipBehavior: Clip.antiAlias,
            contentPadding: EdgeInsets.all(0),
          );
      }
    );
  }

}
