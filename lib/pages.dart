import 'package:flutter/material.dart';

class Info extends MaterialPageRoute<Null>{
    Info() : super(builder: (BuildContext context){
        return Scaffold(
            appBar: AppBar(
                title: Text("Informationen"),
                backgroundColor: Colors.blue,
            ),
            body: Center(
                child: Text("Hier sind die Infos!"),
            )
        );
    });
}

class FairSafeApps extends MaterialPageRoute<Null>{
    FairSafeApps() : super(builder: (BuildContext context){
        return Scaffold(
            appBar: AppBar(
                title: Text("FairSafeApps"),
                backgroundColor: Colors.blue,
            ),
            body: Center(
                child: Text("Informationen über uns:"),
            )
        );
    });
}