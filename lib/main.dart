import 'package:flutter/material.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  const Myapp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Magasin',
      home: Scaffold(
      appBar: AppBar(title: Text('magasin'),
        ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(child: Text('drawer Header', style:TextStyle(color:Colors.white,fontWeight: FontWeight.bold,
            fontSize: 20),),decoration: BoxDecoration(
              color:Colors.blue,
            ),),
            ListTile(title: Text('Client'),
            leading: Icon(Icons.person),
            trailing: Icon(Icons.arrow_right),
            onTap: () {},
            ),
            ListTile(title: Text('Fournisseur'),
            leading: Icon(Icons.local_shipping),
            trailing: Icon(Icons.arrow_right),
            onTap: () {},
            ),
            ListTile(title: Text('Vente'),
            leading: Icon(Icons.shopping_cart),
            trailing: Icon(Icons.arrow_right),
            onTap: () {},
            ),
            ListTile(title: Text('Statistique'),
            leading: Icon(Icons.pie_chart),
            trailing: Icon(Icons.arrow_right),
            onTap: () {},
            ),
            ListTile(title: Text('Parametre'),
            leading: Icon(Icons.settings),
            trailing: Icon(Icons.arrow_right),
            
            onTap: () {},
            ),
          ],
        ),
      ),
      ),
    );
  }
}