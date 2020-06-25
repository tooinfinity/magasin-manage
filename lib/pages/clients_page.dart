import 'package:flutter/material.dart';
import 'package:magasin/models/ClientModel.dart';
import 'package:magasin/widgets/drawer.dart';
import 'package:magasin/http_service.dart';

class ClientsPage extends StatefulWidget {
  const ClientsPage({Key key}) : super(key: key);
  static const String routeName = '/clients';

  @override
  _ClientsPageState createState() => _ClientsPageState();
}

class _ClientsPageState extends State<ClientsPage> {
  final HttpService httpService = HttpService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clients'),
      ),
      drawer: MyDrawer(),
      body: RefreshIndicator(
        onRefresh: () =>  httpService.getClients(),
        child: FutureBuilder(
        future: httpService.getClients(),
        builder: (BuildContext context, AsyncSnapshot<List<ClientModel>> snapshot) {
          if (snapshot.hasData) {
            List<ClientModel> clients = snapshot.data;
            return ListView(
              children: clients
                  .map(
                    (ClientModel client) => ExpansionTile(
                      title: Text(client.title),
                      leading: Text("${client.userId}"),
                      trailing: Icon(Icons.arrow_right),
                      children: <Widget>[
                        Column(children: <Widget>[
                          Text(client.body),
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
      )
    );
  }
}