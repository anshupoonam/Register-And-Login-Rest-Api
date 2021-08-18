import 'package:flutter/material.dart';

import 'package:milkmanagement/api/api_service.dart';
import 'package:milkmanagement/pages/drawer.dart';
import 'package:milkmanagement/shared_service.dart';

class HomePAGE extends StatefulWidget {
  static const String route = '/';
  const HomePAGE({Key? key}) : super(key: key);

  @override
  _HomePAGEState createState() => _HomePAGEState();
}

class _HomePAGEState extends State<HomePAGE> {
  APIService apiService = APIService();

  @override
  Widget build(BuildContext context) {
    @override
    // ignore: unused_element
    void initState() {
      super.initState();
    }

    return Scaffold(
      drawer: const DrawerCode(),
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text("DASHBOARD"),
        actions: [
          GestureDetector(
            onTap: () {
              SharedService.logout().then(
                (_) => Navigator.of(context).pushReplacementNamed('/login'),
              );
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 5.0, 0),
                  child: Icon(Icons.power_settings_new),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 10.0, 0),
                  child: Text(
                    "Logout",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Card(
        child: Container(
          height: 300,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              image: const DecorationImage(
                  fit: BoxFit.cover, image: AssetImage('assets/images/1.png'))),
          child: const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text('Nouveautés'),
          ),
        ),
        margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
      ),
    );
  }
}
