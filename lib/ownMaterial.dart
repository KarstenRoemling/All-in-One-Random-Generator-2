import 'package:flutter/material.dart';

class Bar extends StatefulWidget{
    Bar({Key key, this.title}) : super(key: key);
    final String title;

    @override
    BarState createState() => new BarState();
}

class BarState extends State<Bar> with SingleTickerProviderStateMixin{

    AnimationController controller;
    Animation<double> animation;
    Animation<double> rotation;
    Animation<double> widthAnim;
    bool go = true;


    @override
    void initState(){
        super.initState();
        controller = new AnimationController(duration: new Duration(milliseconds: 600), vsync: this);
        animation = new CurvedAnimation(parent: controller, curve: Curves.linear);
        rotation = new Tween<double>(begin: 0.0, end: 0.5).animate(CurvedAnimation(parent: controller, curve: Curves.linear));
        widthAnim = new Tween<double>(begin: -1.0, end: 1.0).animate(CurvedAnimation(parent: controller, curve: Curves.linear));
        animation.addListener((){
            this.setState((){});
        });
        animation.addStatusListener((AnimationStatus status){});
    }

    void animator(){
        if(go){
            controller.forward();
        }else{
            controller.reverse();
        }
        go = !go;
    }

    double getWidth(double animValue, double maxValue, double iconSize){
        return animValue>=0 ? ((maxValue-iconSize)*animValue)+iconSize : iconSize;
    }

    double getWidth2(double animValue, double maxValue, double iconSize){
        return animValue>=0 ? ((maxValue-iconSize)*animValue) : 0.0;
    }

    @override
    void dispose(){
        controller.dispose();
        super.dispose();
    }

    Widget mayBeText(double g, double alpha){
        if(g <= 0.5){
            return Opacity(
                child: Text(
                    widget.title,
                    style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                    )
                ),
                opacity: alpha,
            );
        }else{
            return SizedBox(
                width: 0.0,
                height: 0.0,
            );
        }
    }

    @override
    Widget build(BuildContext context){
        return Align(
            child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints){
                    return Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                                Align(
                                    child: Container(
                                        child: Card(
                                            child: Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: <Widget>[
                                                    RotationTransition(
                                                        child: IconButton(
                                                            icon: Icon(Icons.arrow_back_ios),
                                                            iconSize: 20.0,
                                                            onPressed: animator,
                                                            splashColor: Colors.transparent,
                                                            highlightColor: Colors.transparent,
                                                        ),
                                                        turns: rotation,
                                                    ),
                                                    SizedOverflowBox(
                                                        child: Transform.translate(
                                                            offset: Offset(28.0, 0.0),
                                                            child: Row(
                                                                children: <Widget>[
                                                                    IconButton(
                                                                        icon: Icon(Icons.settings),
                                                                        iconSize: widthAnim.value >= 0.0 ? widthAnim.value*20.0 : 0.0,
                                                                        onPressed: (){},
                                                                        padding: EdgeInsets.all(0.0),
                                                                    ),
                                                                    IconButton(
                                                                        icon: Icon(Icons.info),
                                                                        iconSize: widthAnim.value >= 0.0 ? widthAnim.value*20.0 : 0.0,
                                                                        onPressed: (){},
                                                                        padding: EdgeInsets.all(0.0),
                                                                    ),
                                                                    IconButton(
                                                                        icon: Icon(Icons.share),
                                                                        iconSize: widthAnim.value >= 0.0 ? widthAnim.value*20.0 : 0.0,
                                                                        onPressed: (){},
                                                                        padding: EdgeInsets.all(0.0),
                                                                    ),
                                                                    IconButton(
                                                                        icon: Icon(Icons.info),
                                                                        iconSize: widthAnim.value >= 0.0 ? widthAnim.value*20.0 : 0.0,
                                                                        onPressed: (){},
                                                                        padding: EdgeInsets.all(0.0),
                                                                    ),
                                                                ],
                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                            ),
                                                        ),
                                                        size: Size(getWidth2(widthAnim.value, constraints.maxWidth, 56.0), 50.0),
                                                    ),
                                                ]
                                            ),
                                            color: Colors.white,
                                            elevation: animation.value*10,
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(Radius.circular(20.0))
                                            ),
                                        ),
                                        width: getWidth(widthAnim.value, constraints.maxWidth, 56.0),
                                    ),
                                    alignment: Alignment.centerRight,
                                ),
                                mayBeText(animation.value, widthAnim.value*(-1)),
                            ]
                        )
                    );
                }
            ),
            alignment: Alignment.centerRight,
        );
    }
}