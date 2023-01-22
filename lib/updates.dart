import 'package:flutter/cupertino.dart';

class updates extends StatefulWidget {
  const updates({Key? key}) : super(key: key);

  @override
  State<updates> createState() => _updatesState();
}

class _updatesState extends State<updates> {
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
