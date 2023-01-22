import 'package:flutter/cupertino.dart';

class search extends StatefulWidget {
  const search({Key? key}) : super(key: key);

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      height: 900,
      color: CupertinoColors.inactiveGray.withOpacity(0.2),
      child: Image.network(
          "https://media0.giphy.com/media/vv7s9gH0yH0c5xGgrK/200w.gif?cid=6c09b9520jzy5edyjargy1sa3jgeuhqi8wh2c0qvqqcszymz&rid=200w.gif&ct=s"),
    );
  }
}
