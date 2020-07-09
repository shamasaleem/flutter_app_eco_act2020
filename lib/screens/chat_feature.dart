import 'package:flutter/material.dart';

class ChateFeature extends StatefulWidget {
  @override
  _ChateFeatureState createState() => _ChateFeatureState();
}

class _ChateFeatureState extends State<ChateFeature> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            children: <Widget>[
            SizedBox (height: 30.0),
        Text ('Activism Group',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          decoration: BoxDecoration (
            color: Colors.lightBlueAccent.withOpacity(0.2),
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.35),
                spreadRadius: 5,
                blurRadius:7,
                offset: Offset(0,3),
              ),
            ],
          ),
          height: 615.0,
          width: 350.0,
        ),
        Stack(children: <Widget>[
          Positioned(

          bottom: 10, left: 10,
          child: Row(
            children: <Widget>[
            Icon(Icons.send, size: 60.0,),
          SizedBox(width: 5.0),
          Column(
            children: <Widget>[
          Container(
          child: Text('subject',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          height: 75, width: 250,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius:BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                color:Colors.grey,
                spreadRadius: 5,
                blurRadius: 7,
                offset:Offset (0,3),
              )
            ],
          ),
        ),
        Divider(
          height:0, thickness:15, color: Colors.black,
        ),
        Container(
          child: Text('message',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          height: 75, width: 250,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius:BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                color:Colors.grey,
                spreadRadius: 5,
                blurRadius: 7,
                offset:Offset (0,3),
              )
            ],
          ),
        ),
        Positioned(
          bottom: 20, right: 10,
          child: Row(
            children: <Widget>[
            Text('account name',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          SizedBox(width: 5.0),
          Container(
            height: 125, width: 200,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius:BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                  color:Colors.grey,
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset:Offset (0,3),
                )
              ],
            ),
          ),
          Positioned(bottom: 30, left: 10,
            child: Row(
              children: <Widget>[
              Text('account name',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(width: 5.0),
            Container(
              height: 125, width: 200,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius:BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(
                    color:Colors.grey,
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset:Offset (0,3),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 40,
              right: 10,
              child: Row(
                children: <Widget>[
                Text('account name',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(width: 5.0),
              Container(
                height: 45, width: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:BorderRadius.circular(15.0),
                  boxShadow: [
                    BoxShadow(
                      color:Colors.grey,
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset:Offset (0,3),
                    )
                  ],
                ),
              ),
              Positioned(
                bottom: 50,
                left:10 ,

                child: Row(
                  children: <Widget>[
                    Text('account name',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(width: 5.0),
                    Container(
                      height: 45, width: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius:BorderRadius.circular(15.0),
                        boxShadow: [
                          BoxShadow(
                            color:Colors.grey,
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset:Offset (0,3),

                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ],
            ),
          ),
            ],
        ),
      ),
      ],
    ),
    ),
    ],
    ),
    ],
    ),
    ),
    ],
    ),
    ],
    ),
    ),
    );
  }
}
