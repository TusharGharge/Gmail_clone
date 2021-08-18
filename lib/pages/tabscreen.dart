import 'package:emailclone/constant.dart';
import 'package:emailclone/pages/mainpage.dart';
import 'package:emailclone/pages/meetpage.dart';
import 'package:flutter/material.dart';

class TabScreen extends StatefulWidget {
  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int _selectedPageIndex = 0;
  final List<Widget> _pages = [
    mainPage(),
    Meetpage(),
  ];

  void _selectpage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _pages[_selectedPageIndex],
        bottomNavigationBar: BottomNavigationBar(
          //backgroundColor: Theme.of(context).primaryColor,
          onTap: _selectpage,
          // backgroundColor: secondary,
          type: BottomNavigationBarType.fixed,

          //fixedColor: Colors.blue[700],
          //unselectedItemColor: Colors.grey[400],
          // type: BottomNavigationBarType.fixed,
          // fixedColor: Theme.of(context).primaryColor,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.black87,
          //unselectedItemColor: const Color(0xff797979),
          currentIndex: _selectedPageIndex,
          items: [
            // BottomNavigationBarItem(
            // backgroundColor: Theme.of(context).primaryColor,
            // icon: Icon(
            // Icons.add_circle_outline_outlined,
            // size: 45,
            // ),
            // title: Text('.', style: TextStyle(fontSize: 0.1)),
            // ),
            BottomNavigationBarItem(
                //  backgroundColor: Theme.of(context).primaryColor,
                icon: _selectedPageIndex == 0
                    ? Icon(
                        Icons.mail,
                        size: 30,
                      )
                    : Icon(Icons.mail_outline_rounded),
                title: Text('Mail',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ))),
            BottomNavigationBarItem(
              //  backgroundColor: Theme.of(context).primaryColor,
              icon: _selectedPageIndex != 0
                  ? Icon(
                      Icons.videocam,
                      size: 30,
                    )
                  : Icon(
                      Icons.videocam_outlined,
                      size: 30,
                    ),
              title: Text(
                'Meet',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Drawer Header'),
              ),
              ListTile(
                title: const Text('Item 1'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: const Text('Item 2'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
