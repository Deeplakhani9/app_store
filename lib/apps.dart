import 'package:flutter/cupertino.dart';

import 'global.dart';

class apps extends StatefulWidget {
  const apps({Key? key}) : super(key: key);

  @override
  State<apps> createState() => _appsState();
}

class _appsState extends State<apps> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 34)),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(left: 10)),
              Text(
                "Apps",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              Padding(padding: EdgeInsets.only(left: 190)),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(),
                child: Image.network(
                    "https://www.apple.com/v/app-store/b/images/overview/icon_appstore__ev0z770zyxoy_large_2x.png"),
              ),
            ],
          ),
          Container(
            height: 1,
            width: 350,
            color: CupertinoColors.inactiveGray,
          ),
          Padding(padding: EdgeInsets.only(top: 10)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: Global.app
                  .map(
                    (e) => Row(
                      children: [
                        Container(
                          width: 350,
                          height: 280,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Padding(padding: EdgeInsets.only(left: 10)),
                                  Text(
                                    "NOW WITH SIRI",
                                    style: TextStyle(
                                      color: CupertinoColors.activeBlue,
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(padding: EdgeInsets.only(left: 10)),
                                  Text(
                                    "${e['name']}",
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(padding: EdgeInsets.only(left: 10)),
                                  Text(
                                    "${e['sname']}",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: CupertinoColors.inactiveGray,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(padding: EdgeInsets.only(top: 10)),
                              Container(
                                width: 330,
                                color: CupertinoColors.white,
                                child: Image.network("${e['imeg']}"),
                              ),
                            ],
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(left: 10)),
                      ],
                    ),
                  )
                  .toList(),
            ),
          ),
          Container(
            height: 1,
            width: 350,
            color: CupertinoColors.inactiveGray,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "12 Geat Apps for ios 12",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(padding: EdgeInsets.only(left: 2)),
              Text(
                "See All",
                style: TextStyle(
                    color: CupertinoColors.link.withOpacity(0.6),
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: Global.app1
                  .map(
                    (e) => Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 400,
                          height: 130,
                          child: Column(
                            children: [
                              Padding(padding: EdgeInsets.only(top: 25)),
                              Row(
                                children: [
                                  Container(
                                    width: 90,
                                    height: 90,
                                    child: Image.network("${e['imeg']}"),
                                  ),
                                  Padding(padding: EdgeInsets.only(left: 9)),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "${e['name']}",
                                            style: TextStyle(
                                              fontSize: 20,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "${e['sname']}",
                                            style: TextStyle(
                                              fontSize: 16,
                                              // color: CupertinoColors.inactiveGray,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Padding(padding: EdgeInsets.only(left: 10)),
                                  Row(
                                    children: [
                                      Container(
                                          width: 73,
                                          height: 35,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: CupertinoColors.inactiveGray
                                                .withOpacity(0.2),
                                          ),
                                          alignment: Alignment.center,
                                          child: Text(
                                            "GET",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    CupertinoColors.activeBlue),
                                          )),
                                      Text(
                                        "In-App\nPurchasws",
                                        style: TextStyle(
                                          color: CupertinoColors.inactiveGray,
                                          fontSize: 8,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(1),
                          height: 1,
                          color: CupertinoColors.inactiveGray,
                        )
                      ],
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
