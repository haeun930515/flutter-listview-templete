import 'package:flutter/material.dart';
import 'package:listviewtemplete/List/List.dart';

class Listcard extends StatelessWidget {
  //
  final Item item;

  Listcard(this.item);

  @override
  Widget build(BuildContext context) {
    return new Container(
      // List item의 box의 CSS 변경 가능
      margin: const EdgeInsets.only(top: 16, bottom: 16, left: 24, right: 24),
      decoration: new BoxDecoration(
          color: Colors.black12,
          shape: BoxShape.rectangle,
          borderRadius: new BorderRadius.circular(8)),

      // List item의 내부 widget
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(
              margin: new EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(item.id),
                  new Text(item.name),
                  new Text(item.description)
                ],
              ))
        ],
      ),
    );
  }
}
