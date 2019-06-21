import 'package:flutter/material.dart';
import './MComponent.dart';
import './data.dart';

class Info extends MaterialPageRoute<Null>{
    Info() : super(builder: (BuildContext context){
        return Scaffold(
            appBar: AppBar(
                title: MText(text:Str.M_INFO[Settings.lang]),
                backgroundColor: Settings.clr,
            ),
            body: Center(
                child: MText(text:"Hier sind die Infos!"),
            )
        );
    });
}

class FairSafeApps extends MaterialPageRoute<Null>{
    FairSafeApps() : super(builder: (BuildContext context){
        return Scaffold(
            appBar: AppBar(
                title: MText(text:"FairSafeApps"),
                backgroundColor: Settings.clr,
            ),
            body: Center(
                child: MText(text:"Informationen über uns:"),
            )
        );
    });
}