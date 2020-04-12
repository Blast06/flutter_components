
import 'package:componentes/src/pages/providers/menu_provider.dart';
import 'package:componentes/src/utils/icono_string_utils.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes')
      ),
      body: _lista(),
          );
        }
      
    Widget _lista() {


      return FutureBuilder(
        future: menuProvider.cargarData(),
        initialData: [],
        builder: (context, AsyncSnapshot<List<dynamic>> snapshot){


          return ListView(
            children: _listaItems(snapshot.data, context),
          );

          

        },
      );
           
  }
            
    List<Widget> _listaItems(List<dynamic> data, BuildContext context) {

      
      final List<Widget> opciones = [];

      data.forEach( (opt) {

        final widgetTemp = ListTile(
          title: Text(opt['texto']),
          leading: Icon(Icons.account_circle) ,
          trailing: getIcon(opt['icon']),
          onTap: () {
            
            Navigator.pushNamed(context, opt['ruta']);
          },
        );

          opciones..add(widgetTemp)
                  ..add(Divider());

      });

      return opciones;

   }
}