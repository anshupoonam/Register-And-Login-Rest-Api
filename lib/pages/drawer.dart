
import 'package:flutter/material.dart';

class DrawerCode extends StatelessWidget {
  const DrawerCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/green.jpg"),
                    fit: BoxFit.cover)),
            accountName: Text(
              "Developer",
              style: TextStyle(color: Colors.white),
            ),
            accountEmail: Text(
              "anshucode@gmail.com",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.orange,
              child: Text(
                "D",
                style: TextStyle(fontSize: 40.0),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Home"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Settings"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: IconButton(
              icon: Icon(Theme.of(context).brightness == Brightness.light
                  ? Icons.lightbulb_outline
                  : Icons.highlight),
              onPressed: () {
                // DynamicTheme.of(context)!.setBrightness(
                //     Theme.of(context).brightness == Brightness.light
                //         ? Brightness.dark
                //         : Brightness.light);
                Navigator.of(context).pop();
              },
            ),
            title: const Text(
              "Version 1.0",
              textAlign: TextAlign.end,
            ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 350),
          )
        ],
      ),
    );
  }
}
