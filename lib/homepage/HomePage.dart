import 'package:clock/enum/data.dart';
import 'package:clock/enum/menu_info.dart';
import 'package:clock/pages/AlarmPage.dart';
import 'package:clock/pages/ClockPage.dart';
import 'package:clock/widgets/genralwidget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

var h, w, t;

class _HomePageState extends State<HomePage> {
  var Context;

  Genral g = new Genral();

  @override
  Widget build(BuildContext context) {
   

    Context = context;
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    t = MediaQuery.of(context).textScaleFactor * h;
    return Scaffold(
        backgroundColor: Color(0xFF2D2F41),
        body: Row(children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: menuItems
                .map((currentMenuInfo) => menubutton(currentMenuInfo))
                .toList(),
          ),
          VerticalDivider(
            color: Colors.white24,
            width: 1,
          ),
          Expanded(
            child: Consumer<MenuInfo>(
                builder: (BuildContext context, MenuInfo value, Widget child) {
              if (value.menuType == MenuType.clock)
                return ClockPage();
              else if (value.menuType == MenuType.alarm)
                return AlarmPage();
              else
                return Container(child: Text("jain mata di"));
            }),
          ),
        ]));
  }

  Widget menubutton(MenuInfo currentMenuInfo) {
    return Consumer<MenuInfo>(
      builder: (BuildContext context, MenuInfo value, Widget child) {
        return FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          padding: const EdgeInsets.symmetric(vertical: 30),
          color: currentMenuInfo.menuType == value.menuType
              ? Colors.pinkAccent
              : Colors.transparent,
          onPressed: () {
            var menuInfo = Provider.of<MenuInfo>(context, listen: false);
            menuInfo.updateMenu(currentMenuInfo);
          },
          child: Column(
            children: <Widget>[
              Image.asset(currentMenuInfo.image, scale: 11),
              g.spaceh(16),
              g.text(currentMenuInfo.title, Colors.white, 14),
            ],
          ),
        );
      },
    );
  }
}
