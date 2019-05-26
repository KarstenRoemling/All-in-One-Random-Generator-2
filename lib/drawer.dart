import 'package:flutter/material.dart';
import './pages.dart';

class DrawerItems extends StatefulWidget{
    @override
    DrawerItemsState createState() => new DrawerItemsState();
}

class DrawerItemsState extends State<DrawerItems>{
    @override
    Widget build(BuildContext context){
        return ListView(
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
                new DrawerHeader(),
                Column(
                    children: <Widget>[
                        ListTile(
                            leading: Image.asset('graphics/logo.png', width: 20.0, height: 20.0),
                            title: Text("FairSafeApps"),
                            onTap: () => Navigator.of(context).push(FairSafeApps()),
                        ),
                        ListTile(
                            leading: const Icon(Icons.info),
                            title: Text("Informationen"),
                            onTap: () => Navigator.of(context).push(Info()),
                        ),
                        ListTile(
                            leading: const Icon(Icons.settings),
                            title: Text("Einstellungen"),
                            onTap: () {},
                        ),
                        ListTile(
                            leading: const Icon(Icons.email),
                            title: Text("Impressum"),
                            onTap: () {},
                        ),
                        ListTile(
                            leading: const Icon(Icons.description),
                            title: Text("Datenschutzerklärung"),
                            onTap: () {},
                        ),
                        ListTile(
                            leading: const Icon(Icons.share),
                            title: Text("Teilen"),
                            onTap: () {},
                        ),
                    ],
                ),
                Text("Version 1.0 - FairSafeApps"),
            ]
        );
    }
}

class DrawerHeader extends StatelessWidget{
    @override
    Widget build(BuildContext context){
        return UserAccountsDrawerHeader(
            accountName: Text("FairSafeApps"),
            accountEmail: Text("fairsafetyapps.anregungenhilfe@gmail.com"),
            currentAccountPicture: CircleAvatar(
                child: Image.asset('graphics/logo.png'),
                backgroundColor: Colors.white,
            ),
        );
    }
}