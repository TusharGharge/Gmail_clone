import 'package:emailclone/constant.dart';
import 'package:emailclone/pages/compose.dart';
import 'package:emailclone/pages/drawer.dart';
import 'package:emailclone/widgets/mainpageWidgets.dart';
import 'package:flutter/material.dart';

class mainPage extends StatefulWidget {
  static const routename = '/mainPage';
  @override
  _mainPageState createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.white,
          onPressed: () {
            Navigator.push<void>(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => Compose(),
              ),
            );
          },
          icon: Icon(Icons.create_outlined, color: Colors.red),
          label: Text(
            'Compose',
            style: TextStyle(
              color: Colors.red,
            ),
          ),
        ),
        //  backgroundColor: bgcolor,
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                //color: Colors.black,
                height: MediaQuery.of(context).size.height * 0.07,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Color(0xFFE5E5E5),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 0.5,
                        blurRadius: 0.5,
                        offset: Offset(1, 0),
                      )
                    ]),
                // decoration: BoxDecoration(
                //   boxShadow: [
                //     BoxShadow(
                //       // color: Colors.grey,
                //       spreadRadius: 3,
                //       blurRadius: 2,
                //       offset: Offset(3, 0),
                //     )
                //   ],
                // ),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.dehaze_outlined,
                        color: Colors.black,
                      ),
                      onPressed: null,
                    ),
                    // onPressed: (){Naviagtor.push(MainDrawer()},),
                    Text(
                      'Search in mail',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    // Container(
                    //   margin: EdgeInsets.all(100.0),
                    //   decoration: BoxDecoration(
                    //       color: Colors.orange, shape: BoxShape.circle),
                    //   child: Image.network(
                    //       "https://4.bp.blogspot.com/-Jx21kNqFSTU/UXemtqPhZCI/AAAAAAAAh74/BMGSzpU6F48/s1600/funny-cat-pictures-047-001.jpg"),
                    // ),
                    SizedBox(
                      width: 150,
                    ),
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('Asset/tushar.jpeg'),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'ALL INBOXES',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
            ),
            mainpagewidgetes(
              color: Colors.yellowAccent,
              colorString: 'T',
              title: 'nse',
              subject: 'Funds/Securities Balance',
              mesg: 'Dear Investor,with refrenceto NSE..',
              time: '15.54',
            ),
            mainpagewidgetes(
              color: Colors.pink,
              colorString: 'T',
              title: 'TechGig latest News',
              subject: 'TCS is planning to hire students..',
              mesg: 'Daily newsletter Wednesday, 18th..',
              time: '09.38',
            ),
            mainpagewidgetes(
              color: Colors.yellow,
              colorString: 'K',
              title: 'Kaggle',
              subject: 'Competiton Launch: NFL Data..',
              mesg: 'Hi Tushargharge,the National..',
              time: 'Aug 17',
            ),
            mainpagewidgetes(
              color: Colors.purple,
              colorString: 'I',
              title: 'IBM Careers',
              subject: 'Hello and Thank you from IBM',
              mesg: 'Dear Tushar, Congratulation! You',
              time: 'Aug 16',
            ),
            mainpagewidgetes(
              color: Colors.blue,
              colorString: 'D',
              title: 'Dare2Compete Updates',
              subject: 'Certificate of Jumpstart',
              mesg: 'Certificate of participation Hi...',
              time: 'Aug 16',
            ),
            mainpagewidgetes(
              color: Colors.pink,
              colorString: 'T',
              title: 'TechGig latest News',
              subject: 'TCS is planning to hire students..',
              mesg: 'Daily newsletter Wednesday, 18th',
              time: 'Aug 15',
            ),
            mainpagewidgetes(
              color: Colors.greenAccent,
              colorString: 'K',
              title: 'Kaggle',
              subject: 'Competiton Launch: NFL Data..',
              mesg: 'Hi Tushargharge,the National Foo..',
              time: 'Aug 12',
            ),
            mainpagewidgetes(
              color: Colors.yellowAccent,
              colorString: 'T',
              title: 'nse',
              subject: 'Funds/Securities Balance',
              mesg: 'Dear Investor,with refrenceto NSE..',
              time: 'Aug 11',
            ),
            mainpagewidgetes(
              color: Colors.pink,
              colorString: 'T',
              title: 'TechGig latest News',
              subject: 'TCS is planning to hire students..',
              mesg: 'Daily newsletter Wednesday, 18th..',
              time: 'Aug 10',
            ),
          ],
        ),
      ),
    );
  }
}
