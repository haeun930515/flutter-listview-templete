import 'package:flutter/material.dart';

import 'listbody.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Column(
        children: <Widget>[new Appbar("app bar"), new Listbody()],
      ),
    );
  }
}

class Appbar extends StatelessWidget {
  final String title;

  Appbar(this.title);
  @override
  Widget build(BuildContext context) {
    final double statusbar = MediaQuery.of(context).padding.top;

    return new Container(
        padding: new EdgeInsets.only(top: statusbar),
        height: statusbar + 50,
        color: Colors.grey,
        child: new Center(
          child: new Text(
            title,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ));
  }
}
