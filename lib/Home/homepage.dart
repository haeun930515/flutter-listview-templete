import 'package:flutter/material.dart';

import 'listbody.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Column(
        //앱 화면 구성으로, Appbar 아래 body가 나올 수 있도록 구성
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
    //Status bar의 height를 계산
    final double statusbar = MediaQuery.of(context).padding.top;

    return new Container(
        // 윗부분 status bar의 높이만큼 아래로 Appbar를 이동
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
