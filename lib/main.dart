import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MainPage());

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Replica",
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          title: Text("Ask Me Anything"),
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: ReplicaPage(),
      ),
    );
  }
}

class ReplicaPage extends StatefulWidget {
  @override
  _ReplicaPageState createState() => _ReplicaPageState();
}

class _ReplicaPageState extends State<ReplicaPage> {
  int ReplicationNumber = 1;
  void randomReplica() {
    setState(() {
      ReplicationNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      children: <Widget>[
        Expanded(
          child: FlatButton(
            onPressed: () {
              randomReplica();
            },
            padding: EdgeInsets.only(left: 10),
            child: Image.asset("images/ball$ReplicationNumber.png"),
          ),
        ),
        SizedBox(
          width: 20,
        )
      ],
    ));
  }
}
