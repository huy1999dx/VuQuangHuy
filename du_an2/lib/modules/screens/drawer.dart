import 'package:du_an2/modules/screens/list_name.dart';
import 'package:flutter/material.dart';
import 'home.dart';

class NavDrawerExample extends StatelessWidget {
  const NavDrawerExample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const drawerHeader = UserAccountsDrawerHeader(
      accountName: Text('Quang Huy'),
      accountEmail: Text('huyvq.hnue@gmail.com'),
      currentAccountPicture: CircleAvatar(
        backgroundColor: Colors.black,
        child: FlutterLogo(size: 42.0),
      ),
    );
    final drawerItems = ListView(
      children: <Widget>[
        drawerHeader,
        ListTile(
            title: const Text('To page 1'),
            onTap: () {} //=> Navigator.of(context).push(_NewPage(1)),
            ),
        ListTile(
            title: const Text('To page 2'),
            onTap: () {} //=> Navigator.of(context).push(_NewPage(2)),
            ),
        ListTile(
          title: const Text('Danh Sách Tên'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => List_name()),
            );
          },
        ),
      ],
    );
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('Vũ Quang Huy'),
        ),
        body: const Center(
          child: BottomTabbarExample(),
        ),
        drawer: Drawer(
          child: drawerItems,
        ));
  }
}

// <void> means this route returns nothing.
class _NewPage extends MaterialPageRoute<void> {
  _NewPage(int id)
      : super(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Page $id'),
              elevation: 1.0,
            ),
            body: Center(
              child: Text('Page $id'),
            ),
          );
        });
}
