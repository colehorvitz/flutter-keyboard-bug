import 'package:flutter/cupertino.dart';

class MyPage extends StatelessWidget {
  final int pageNumber;

  const MyPage({Key key, this.pageNumber}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(),
      backgroundColor: CupertinoColors.white,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          "Page $pageNumber",
          style: TextStyle(fontSize: 48),
        ),
        SizedBox(height: 32),
        Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: CupertinoTextField(
              placeholder: "Enter text",
              style: TextStyle(color: CupertinoColors.black, fontSize: 18),
              placeholderStyle:
                  TextStyle(color: CupertinoColors.systemGrey2, fontSize: 18),
              decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  border: Border(
                      bottom: BorderSide(color: CupertinoColors.systemGrey3))),
            )),
        SizedBox(
          height: 16,
        ),
        CupertinoButton(
          color: CupertinoColors.activeBlue,
          onPressed: () {
            Navigator.of(context, rootNavigator: true).push(CupertinoPageRoute(
              builder: (context) {
                return CupertinoPageScaffold(
                  backgroundColor: CupertinoColors.white,
                  child: Center(
                    child: Text("Hello World"),
                  ),
                );
              },
            ));
          },
          child: Text(
            "Click Me",
            style: TextStyle(color: CupertinoColors.white),
          ),
        )
      ]),
    );
  }
}
