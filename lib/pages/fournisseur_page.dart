import 'package:flutter/material.dart';
import 'package:magasin/widgets/drawer.dart';

class FournisseurPage extends StatelessWidget {
  const FournisseurPage({Key key}) : super(key: key);
  static const String routeName = '/fournisseur';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fournisseur'),
      ),
      drawer: MyDrawer(),
      body: Center(child: Text('Fournisseur'),),
    );
  }
}