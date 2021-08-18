import 'package:flutter/material.dart';

class composewidgets extends StatelessWidget {
  final String? title;
  final String? main;
  final IconData? icon;

  const composewidgets({
    this.title,
    this.main,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.8,
        child: Row(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(title!,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    )),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.75,
              child: Text(
                main!,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              child: Icon(
                icon,
                size: 30,
              ),
            ),
          ],
        ));
  }
}
