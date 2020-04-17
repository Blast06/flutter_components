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
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2()
                  ],
                ),
              );
}
          
Widget _cardTipo1() {


  return Card(
    clipBehavior: Clip.antiAlias,
    elevation: 0.7,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
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

Widget _cardTipo2() {

  final card =  Card(
    elevation: 0.5,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
    child: Column(
      children: <Widget>[

        FadeInImage(
          placeholder: AssetImage('assets/original.gif'), 
          image: NetworkImage('https://abduzeedo.com/sites/default/files/styles/home_cover/public/originals/abdz_infrared_arashiyama_mockup_0.jpg?itok=9lsBMY9U'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
        // Image(
        //   image:NetworkImage('https://abduzeedo.com/sites/default/files/styles/home_cover/public/originals/abdz_infrared_arashiyama_mockup_0.jpg?itok=9lsBMY9U'),

        // ),
        Container(
          padding: EdgeInsets.all(10.0),
          child: Text('No se nada de eso'),
        )
      ],
    ),
  );

  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30.0),
      boxShadow:<BoxShadow>[
        BoxShadow(
          color: Colors.black26,
          blurRadius: 10.0,
          spreadRadius: 2.0,
          offset: Offset(2.0, 10.0)
           )
      ],
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(30.0),
      child: card,
    ),
  );


}



}