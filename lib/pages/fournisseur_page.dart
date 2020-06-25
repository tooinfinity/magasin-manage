import 'package:flutter/material.dart';
import 'package:magasin/http_service.dart';
import 'package:magasin/models/User.dart';
import 'package:magasin/widgets/drawer.dart';

class FournisseurPage extends StatefulWidget {
  const FournisseurPage({Key key}) : super(key: key);
  static const String routeName = '/fournisseur';

  @override
  _FournisseurPageState createState() => _FournisseurPageState();
}

class _FournisseurPageState extends State<FournisseurPage> {
  final HttpService httpService = HttpService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fournisseur'),
      ),
      drawer: MyDrawer(),
      body: RefreshIndicator(
        onRefresh: () =>  httpService.getUsers(),
        child: FutureBuilder(
        future: httpService.getUsers(),
        builder: (BuildContext context, AsyncSnapshot<List<User>> snapshot) {
          if (snapshot.hasData) {
            List<User> users = snapshot.data;
            return ListView(
              children: users
                  .map(
                    (User user) => ExpansionTile(
                      title: Text(user.firstName),
                      leading: null,
                      trailing: Icon(Icons.arrow_right),
                      children: <Widget>[
                        Column(children: <Widget>[
                          Text(user.email),
                          ],
                        ),
                      ],
                    ),
                  )
                  .toList(),
            );
            
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
      ),
    );
  }
}