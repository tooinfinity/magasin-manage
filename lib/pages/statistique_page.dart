import 'package:flutter/material.dart';
import 'package:magasin/widgets/drawer.dart';

class StatistiquePage extends StatelessWidget {
  const StatistiquePage({Key key}) : super(key: key);
  static const String routeName = '/statistique';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Statistique'),
      ),
      drawer: MyDrawer(),
      body: Center(child: Text('Statistique'),),
    );
  }
}