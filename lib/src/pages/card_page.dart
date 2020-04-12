import 'package:flutter/material.dart';



class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards')
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          _cardTipo1()
        ],
      ),
    );
  }

  Widget _cardTipo1() {


    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Soy e ltitulo de esta tarjeta'),
            subtitle: Text('Esta es una super larga descripcion sin ningun animo de ... no se'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                onPressed: () {}, 
                child: Text('Cancelar'),
                ),
                FlatButton(
                onPressed: () {}, 
                child: Text('Ok'),
                ),
            ],
          ),
        ],
      ),

    );
  }
}