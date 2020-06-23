import 'package:flutter/material.dart';
import 'package:magasin/routes/Routes.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          children: <Widget>[
            _createDrawerHeader(),
            _createDrawerList(icon: Icons.person, text: 'Client',onTap: ()=>
              Navigator.pushReplacementNamed(context, Routes.clients)),
            _createDrawerList(icon: Icons.local_shipping, text: 'Fournisseur',onTap: () =>
              Navigator.pushReplacementNamed(context, Routes.fournisseur)),
            _createDrawerList(icon: Icons.shopping_cart, text: 'Vente',onTap: () =>
              Navigator.pushReplacementNamed(context, Routes.ventes)),
            _createDrawerList(icon: Icons.pie_chart, text: 'Statistique',onTap: () =>
              Navigator.pushReplacementNamed(context, Routes.statistique)),
            Divider(),
            _createDrawerList(icon: Icons.settings, text: 'Paramétre',onTap: () =>
              Navigator.pushReplacementNamed(context, Routes.settings)),
            Divider(),
            ListTile(
              title:Center(child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: Text('Version : 0.0.1'),
            ),),
            ),
          ],
        ),
      );
  }
}

// declaration fo header widget
Widget _createDrawerHeader(){
  return DrawerHeader(
    margin: EdgeInsets.zero,
    padding: EdgeInsets.zero,
    decoration: BoxDecoration(
      image:DecorationImage(fit: BoxFit.fill, image: AssetImage('assets/images/drawer-bg.jpg'),)
    ),
    child: Stack(
      children: <Widget>[
        Positioned(bottom: 12.0,left: 16.0,child: Text('Title Of Store',style: TextStyle(fontSize: 20.0,color: Colors.white,fontWeight:FontWeight.w500)),)
      ],
    ),
    );
}

// declaration fo header widget
Widget _createDrawerList({IconData icon, String text, GestureTapCallback onTap}){
  return ListTile(
    title: Text(text),
    leading:Icon(icon),
    trailing: Icon(Icons.arrow_right),
    onTap: onTap,
  );
}