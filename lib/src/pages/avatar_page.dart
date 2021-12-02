import 'package:flutter/material.dart';

class AvatarPage extends StatefulWidget {
  @override
  State<AvatarPage> createState() => _AvatarPageState();
}
String urlImagen = "https://upload.wikimedia.org/wikipedia/commons/3/35/Neckertal_20150527-6384.jpg";

class _AvatarPageState extends State<AvatarPage> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/commons/7/7b/Stan_Lee_by_Gage_Skidmore_3.jpg'),
              radius: 25.0,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    urlImagen= "https://upload.wikimedia.org/wikipedia/commons/3/35/Neckertal_20150527-6384.jpg";
                  });
                  //Navigator.pushNamed(context, '/');
                },
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: GestureDetector(
                child: Text('SCN'),
                onTap: () {
                  
                  setState(() {
                    urlImagen = "https://d500.epimg.net/cincodias/imagenes/2018/11/13/lifestyle/1542113135_776401_1542116070_noticia_normal.jpg";
                  });
                  //Navigator.pushNamed(context, '/');
                },
              ),
              backgroundColor: Colors.white,
            ),
          ),
        ],
        centerTitle: true,
      ),
      body: _cambiarImagen(),/*Center(
        child: FadeInImage(
          image: NetworkImage(
              'https://www.theolivepress.es/wp-content/uploads/2019/02/High-frontier.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
        //child: Text('AvatarPage', style: TextStyle(fontSize: 25.0),)
      ),*/
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //Navigator.pop(context);
          Navigator.pushNamed(context, '/');
        },
        child: Icon(Icons.arrow_left),
      ),
    );
  }


  Widget _cambiarImagen() {
      return Center(
        child: FadeInImage(
          image: NetworkImage(urlImagen),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      );
  }
}
