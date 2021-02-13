import 'package:drinkly/models/usage_data.dart';
import 'package:drinkly/screens/history.dart';
import 'package:drinkly/screens/remainder.dart';
import 'package:drinkly/screens/usage.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.6,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 40.0,
                    child: ClipOval(
                      child: Image.asset("assets/images/logo.jpg"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      "Drinkly",
                      style: TextStyle(
                        fontSize: 34.0,
                        color: Colors.black54,
                      ),
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(90.0)),
              ),
            ),
            // ListTile(
            //     leading: Icon(Icons.history),
            //     title: Text('History'),
            //     onTap: () => {
            //           Navigator.push(context,
            //               MaterialPageRoute(builder: (context) => History()))
            //         }),

            ListTile(
              leading: Icon(Icons.rounded_corner),
              title: Text('Info'),
              onTap: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => UsageRecord()))
              },
            ),
            ListTile(
              leading: Icon(Icons.link),
              title: Text('Our Website'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.info_outline),
              title: Text('About'),
              onTap: () => {
                showAboutDialog(
                    context: context,
                    applicationIcon: Image.asset(
                      'assets/images/logo.jpg',
                      width: 70,
                      height: 70,
                    ),
                    applicationName: 'Drinkly',
                    applicationLegalese:
                        '''This Application was developed by a team of Student's As Thier Final Year Project In Departmanet of ITC at Sindh Agriculture University Tando Jam
                  ''',
                    applicationVersion: '1.0',
                    children: [
                      Column(
                          children: contactInfo
                              .map((e) => ListTile(
                                    title: Text("${e.title}"),
                                    subtitle: Text("${e.data}"),
                                  ))
                              .toList())
                    ]),
              },
            ),
            Container(
              padding: EdgeInsetsDirectional.only(top: 150),
              child: Image.asset("assets/images/img.png"),
            ),
          ],
        ),
      ),
    );
  }
}
