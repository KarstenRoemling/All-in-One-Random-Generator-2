import 'package:flutter/material.dart';
import './data.dart';

class MText extends StatefulWidget{
    MText({Key key, this.text, Key key2, this.style}) : super(key: key);
    final String text;
    final TextStyle style;

    @override
    MTextState createState() => MTextState();
}

class MTextState extends State<MText>{
    TextStyle ts;
    
    @override
    void initState(){
      if(widget.style != null){
        ts = widget.style.apply(
            fontFamily: Settings.font
        );
      }else{
        ts = new TextStyle(
          fontFamily: Settings.font
        );
      }
    }

    @override
    Widget build(BuildContext context){
        return Text(widget.text,
            style: ts
        );
    }
}