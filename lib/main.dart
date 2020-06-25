import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:magasin/pages/clients_page.dart';
import 'package:magasin/pages/fournisseur_page.dart';
//import 'package:magasin/pages/home_page.dart';
import 'package:magasin/pages/settings_page.dart';
import 'package:magasin/pages/statistique_page.dart';
import 'package:magasin/pages/ventes_page.dart';
import 'package:magasin/routes/Routes.dart';

//void main() => ;

Future main() async {
  await DotEnv().load('.env');
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Store',
     // home: HomePage(),
      theme: ThemeData(
        primaryColor: Colors.black,
        accentColor: Colors.black
      ),
      initialRoute: '/clients',
      routes: {
        Routes.clients: (context) => ClientsPage(),
        Routes.fournisseur: (context) => FournisseurPage(),
        Routes.statistique: (context) => StatistiquePage(),
        Routes.ventes: (context) => VentesPage(),
        Routes.settings: (context) => SettingsPage(),
      },
    );
  }
}