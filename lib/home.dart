import 'package:bug/my_page.dart';
import 'package:flutter/cupertino.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        backgroundColor: CupertinoColors.white,
        tabBar: CupertinoTabBar(
          backgroundColor: CupertinoColors.white,
          items: [
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.home)),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.search)),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.person)),
          ],
          inactiveColor: CupertinoColors.systemGrey2,
          activeColor: CupertinoColors.black,
        ),
        tabBuilder: (context, index) {
          return CupertinoTabView(
            builder: (context) {
              return MyPage(pageNumber: index);
            },
          );
        });
  }
}
