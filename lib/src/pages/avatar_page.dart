import 'package:flutter/material.dart';


class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          CircleAvatar(
            child: Text('SL'),
            backgroundColor: Colors.red,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.account_balance_wallet),
        onPressed: (){
        Navigator.pop(context);
      }),
    );

  }
  
}