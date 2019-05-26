import 'package:flutter/material.dart';
import './contentElements.dart';

class Content extends StatefulWidget{
    @override
    ContentState createState() => new ContentState();
}

class ContentState extends State<Content>{

    List data = [new SimpleRandom()];

    @override
    Widget build(BuildContext context){
        return Container(
            child: ListView.builder(
                padding: EdgeInsets.all(8.0),
                itemCount: data.length,
                itemBuilder: (BuildContext context, int index) {
                    return Container(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                                Card(
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: data[index],
                                    )
                                )
                            ]
                        )
                    );
                },
            )
        );
    }
}