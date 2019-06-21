import 'package:flutter/material.dart';
import './pages.dart';
import './MComponent.dart';
import './data.dart';

class DrawerItems extends StatefulWidget{
    @override
    DrawerItemsState createState() => new DrawerItemsState();
}

class DrawerItemsState extends State<DrawerItems>{
    @override
    Widget build(BuildContext context){
        return ListView(
            children: <Widget>[
                DrawerHeader(),
                Column(
                    children: <Widget>[
                        ListTile(
                            leading: Image.asset('graphics/logo.png', width: 20.0, height: 20.0),
                            title: MText(text:"FairSafeApps"),
                            onTap: () => Navigator.of(context).push(FairSafeApps()),
                        ),
                        ListTile(
                            leading: const Icon(Icons.info),
                            title: MText(text: Str.M_INFO[Settings.lang]),
                            onTap: () => Navigator.of(context).push(Info()),
                        ),
                        ListTile(
                            leading: const Icon(Icons.settings),
                            title: MText(text: Str.M_SETT[Settings.lang]),
                            onTap: () {},
                        ),
                        ListTile(
                            leading: const Icon(Icons.email),
                            title: MText(text: Str.M_CONT[Settings.lang]),
                            onTap: () {},
                        ),
                        ListTile(
                            leading: const Icon(Icons.description),
                            title: MText(text: Str.M_PRIV[Settings.lang]),
                            onTap: () {},
                        ),
                        ListTile(
                            leading: const Icon(Icons.share),
                            title: MText(text: Str.M_SHAR[Settings.lang]),
                            onTap: () {},
                        ),
                    ],
                ),
                MText(text: Str.M_VERSION_INFO[Settings.lang]),
            ]
        );
    }
}

class DrawerHeader extends StatelessWidget{
    @override
    Widget build(BuildContext context){
        return UserAccountsDrawerHeader(
            accountName: MText(text:"FairSafeApps"),
            accountEmail: MText(text:"fairsafetyapps.anregungenhilfe@gmail.com"),
            currentAccountPicture: CircleAvatar(
                child: Image.asset('graphics/logo.png'),
                backgroundColor: Colors.white,
            ),
        );
    }
}