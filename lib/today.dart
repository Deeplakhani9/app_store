import 'package:flutter/cupertino.dart';

class today extends StatefulWidget {
  const today({Key? key}) : super(key: key);

  @override
  State<today> createState() => _todayState();
}

class _todayState extends State<today> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: CupertinoColors.white.withOpacity(1),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 50,
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 10)),
                Text(
                  "WEDNESDAY,SEPTEMBER 12",
                  style: TextStyle(
                    fontSize: 15,
                    color: CupertinoColors.inactiveGray,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.only(left: 10)),
                Text(
                  "Today",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 200)),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: CupertinoColors.inactiveGray,
                  ),
                  child: Image.network(
                      "https://www.apple.com/v/app-store/b/images/overview/icon_appstore__ev0z770zyxoy_large_2x.png"),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: 330,
                    height: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.network(
                        "https://stockpsd.net/wp-content/uploads/2018/10/PUBG-Tournament-Flyer-PSD-Template-min.jpg"),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  Container(
                    width: 330,
                    height: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.network(
                        "http://fanboygaming.com/wp-content/uploads/2013/05/June1st_COD_BO2.jpg"),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  Container(
                    width: 330,
                    height: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.network(
                        "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/fortnite-tournament-poster-design-template-2c2ceccef655c38cf99f2c51e5d47e7d_screen.jpg?ts=1637002216"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
