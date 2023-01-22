import 'package:flutter/cupertino.dart';

import 'apps.dart';
import 'games.dart';
import 'search.dart';
import 'today.dart';
import 'updates.dart';

void main() {
  runApp(CupertinoApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => MyApp(),
    },
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.white,
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          backgroundColor: CupertinoColors.inactiveGray.withOpacity(0.2),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.today)),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.game_controller)),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.app)),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.arrow_down)),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.search)),
          ],
        ),
        tabBuilder: (context, i) {
          return CupertinoTabView(
            builder: (context) {
              return CupertinoPageScaffold(
                  backgroundColor: CupertinoColors.white,
                  child: (i == 0)
                      ? today()
                      : (i == 1)
                          ? games()
                          : (i == 2)
                              ? apps()
                              : (i == 3)
                                  ? updates()
                                  : search());
            },
          );
        },
      ),
    );
  }
}
