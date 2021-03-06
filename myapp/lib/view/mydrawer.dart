import 'package:flutter/material.dart';
import 'package:myapp/model/user.dart';
import 'package:myapp/view/mainscreen.dart';
import 'shopmartscreen.dart';

class MyDrawer extends StatefulWidget {
  final User user;

  const MyDrawer({Key key, this.user}) : super(key: key);
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        UserAccountsDrawerHeader(
          accountEmail: Text(widget.user.email),
          currentAccountPicture: CircleAvatar(
            backgroundColor:
                Theme.of(context).platform == TargetPlatform.android
                    ? Colors.white
                    : Colors.red,
            backgroundImage: AssetImage(
              "assets/images/profilea.png",
            ),
          ),
          accountName: Text(widget.user.name),
        ),
        ListTile(
            title: Text("Dashboard"),
            onTap: () {
              Navigator.pop(context);

              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (content) => MainScreen(
                            user: widget.user,
                          )));
            }),
        ListTile(
            title: Text("Shop Mart"),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (content) => ShopMartScreen(
                            user: widget.user,
                          )));
            }),
        ListTile(
            title: Text("Preloved"),
            onTap: () {
              Navigator.pop(context);
            }),
        ListTile(
            title: Text("My Tour"),
            onTap: () {
              Navigator.pop(context);
            }),
        ListTile(
            title: Text("Messaging"),
            onTap: () {
              Navigator.pop(context);
            }),
        ListTile(
            title: Text("My Profile"),
            onTap: () {
              Navigator.pop(context);
            }),
        ListTile(
            title: Text("Logout"),
            onTap: () {
              Navigator.pop(context);
            })
      ],
    ));
  }
}
