import 'package:flutter/material.dart';
import 'package:magasin/widgets/drawer.dart';

class ClientsPage extends StatelessWidget {
  const ClientsPage({Key key}) : super(key: key);
  static const String routeName = '/clients';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clients'),
      ),
      drawer: MyDrawer(),
      body: Center(child: Text('Clients'),),
    );
  }
}