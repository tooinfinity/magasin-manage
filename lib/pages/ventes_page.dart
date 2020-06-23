import 'package:flutter/material.dart';
import 'package:magasin/widgets/drawer.dart';

class VentesPage extends StatelessWidget {
  const VentesPage({Key key}) : super(key: key);
  static const String routeName = '/ventes';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ventes'),
      ),
      drawer: MyDrawer(),
      body: Center(child: Text('Ventes'),),
    );
  }
}