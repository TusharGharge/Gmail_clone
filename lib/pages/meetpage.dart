import 'package:emailclone/constant.dart';
import 'package:emailclone/pages/drawer.dart';
import 'package:emailclone/pages/drawer.dart';
import 'package:emailclone/pages/drawer.dart';
import 'package:flutter/material.dart';
import './drawer.dart';
import 'drawer.dart';

class Meetpage extends StatelessWidget {
  static const routename = '/meetpage';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //backgroundColor: bgcolor,
        appBar: AppBar(
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          // iconTheme:Icon()
          backgroundColor: Colors.white, //Color(121212),
          title: Center(
            child: Text(
              "Meet",
              style: TextStyle(
                // fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          // leading: IconButton(
          //   icon: Icon(Icons.dehaze_outlined),
          //   onPressed: () => Navigator.push(
          //       context, MaterialPageRoute(builder: (context) => MainDrawer())),
          // ),

          actions: <Widget>[
            PopupMenuButton<String>(
              icon: CircleAvatar(
                backgroundImage: AssetImage('Asset/tushar.jpeg'),
              ),
              onSelected: null,
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem<String>(
                    value: '1',
                    child: Text('1'),
                  ),
                  // PopupMenuItem<String>(
                  //   value: '2',
                  //   child: Text('2'),
                  // ),
                ];
              },
            )
          ],
        ),
        drawer: MainDrawer(),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(7)),
                    child: FlatButton(
                      onPressed: () {},
                      child: Text('New meeting',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          )),
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(7)),
                    child: FlatButton(
                      onPressed: () {},
                      child: Text('Join with a code',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 15,
                          )),
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                bottom: 20,
              ),
              child: Text('MEETINGS'),
            ),
            meetwidget(
                title: "Group Project and Discuss....",
                subtitle: "Web,Feb 3,20... May 31,2022"),
            meetwidget(
                title: "Group Project and Discuss....",
                subtitle: "Sun,Jul4,20... Aug 31,2022"),
          ], //backgroundColor: Colors.black,

          // drawer: Drawer(),
        ),
      ),
    );
  }
}

class meetwidget extends StatelessWidget {
  final String? title;
  final String? subtitle;
  const meetwidget({
    this.title,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.blue[50],
          child: Icon(
            Icons.event_rounded,
            color: Colors.blue,
          ),
        ),
        title: Text(title!,
            style: TextStyle(
              fontSize: 14,
            )),
        subtitle: Text(subtitle!),
        trailing: Container(
          width: 70,
          height: 30,
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(25)),
          child: Center(
            child: Text(
              'Now',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
