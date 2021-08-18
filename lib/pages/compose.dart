import 'package:emailclone/widgets/composewidgets.dart';
import 'package:flutter/material.dart';

class Compose extends StatelessWidget {
  static const routename = '/Compose';
  //const Compose({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: Text('Compose', style: TextStyle(color: Colors.black)),
            iconTheme: IconThemeData(color: Colors.black),
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.attach_file_outlined),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.send_outlined,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert),
              ),
            ],
          ),
          body: ListView(
            children: [
              composewidgets(
                title: 'From',
                main: 'tushargharge1111@gmail.com',
                icon: Icons.expand_more_outlined,
              ),
              Divider(
                color: Colors.black,
              ),
              Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Row(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text('To   ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                              )),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.77,
                        child: null,
                      ),
                      Container(
                        child: Icon(
                          Icons.expand_more_outlined,
                          size: 30,
                        ),
                      ),
                    ],
                  )),
              Divider(
                color: Colors.black,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Subject',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              // composewidgets(
              //   title: 'Subject',
              //   //main: null,
              //   //icon: null,
              // ),
              Divider(
                color: Colors.black,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Row(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('Compose email',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                            )),
                      ),
                    ),
                    // Container(
                    //   width: MediaQuery.of(context).size.width * 0.75,
                    //   child: Text(
                    //     main!,
                    //     style: TextStyle(
                    //       fontSize: 18,
                    //     ),
                    //   ),
                    // ),
                    // Container(
                    //   child: Icon(
                    //     Icons.arrow_drop_down,
                    //     size: 40,
                    //   ),
                    // ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
