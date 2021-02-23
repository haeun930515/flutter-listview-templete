import 'package:flutter/material.dart';
import '../List/List.dart';
import '../List/Listcard.dart';

class Listbody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Expanded(
      child: new ListView.builder(
        itemBuilder: (context, index) => new Listcard(items[index]),
        itemCount: items.length,
        padding: new EdgeInsets.all(10),
      ),
    );
  }
}
