import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'screens/instagram.dart' as Inst;
import 'screens/scratches.dart' as Scratch;

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("AppBar"),
          backgroundColor: Colors.blueGrey,
        ),
        drawer: Drawer(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(color: Colors.blue),
                child: Center(
                  child: Text(
                    'Navigation',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              SizedBox(
                height: 400,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    NavItem('Main'),
                    NavItem('About Us'),
                    NavItem('Info'),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            print('the key was pressed');
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              label: 'Wallet',
              icon: Icon(Icons.account_balance_wallet),
            ),
            BottomNavigationBarItem(
              label: 'Account',
              icon: Icon(Icons.account_circle),
            ),
            BottomNavigationBarItem(
              label: 'Airplane',
              icon: Icon(Icons.airplanemode_active_rounded),
            ),
          ],
        ),
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  String text;

  NavItem(this.text);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(7.0),
      child: Center(
        child: Text(
          '$text',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
        ),
      ),
    );
  }
}
