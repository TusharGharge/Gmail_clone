import 'package:flutter/material.dart';

class mainpagewidgetes extends StatelessWidget {
  final Color? color;
  final String? colorString;
  final String? title;
  final String? subject;
  final String? mesg;
  final String? time;
  const mainpagewidgetes({
    this.color,
    this.colorString,
    this.mesg,
    this.subject,
    this.time,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.1,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: color,
                  child: Text(colorString!,
                      style: TextStyle(
                        color: Colors.white,
                        // fontWeight: FontWeight.bold,
                        fontSize: 25,
                      )),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.64,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title!,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      subject!,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      mesg!,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                  ]),
            ),
            Column(
              children: [
                Text(
                  time!,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                ),
                SizedBox(
                  height: 8,
                ),
                Icon(
                  Icons.star_border_outlined,
                  color: Colors.grey,
                  size: 30,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
