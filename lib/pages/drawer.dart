import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  Widget builderList(String title, IconData icon, Function tabHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 20,
        color: Colors.black,
      ),
      title: Text(
        title,
        style: TextStyle(
            fontFamily: 'Robotocondensed',
            fontSize: 15,
            // fontWeight: FontWeight.bold,
            color: Colors.black45),
      ),
      onTap: null,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 20.0,
              left: 10,
              bottom: 15,
            ),
            child: Text('Gmail',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.red,
                )),
          ),
        ),
        Divider(
          color: Colors.black,
        ),
        builderList('All indoxes', Icons.mark_as_unread_outlined, () {}),
        Divider(
          color: Colors.black,
        ),
        builderList('Primary', Icons.inbox_rounded, () {}),
        builderList('Social', Icons.people_outline_outlined, () {}),
        builderList('Promotion', Icons.sell_outlined, () {}),
        Divider(),
        Container(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 10.0,
              top: 8,
              bottom: 8,
            ),
            child: Text('ALL LABELS'),
          ),
        ),
        builderList('Starred', Icons.star_border, () {}),
        builderList('Snoozed', Icons.watch_later_outlined, () {}),
        builderList('Important', Icons.label_important_outline, () {}),
        builderList('Sent', Icons.send_outlined, () {}),
        builderList('Scheduled', Icons.schedule_send_outlined, () {}),
        builderList('Outbox', Icons.outbox_outlined, () {}),
        builderList('Drafts', Icons.insert_drive_file_outlined, () {}),
        builderList('All mail', Icons.all_inbox_outlined, () {}),
        builderList('Spam', Icons.report_outlined, () {}),
        builderList('Trash', Icons.delete_outline, () {}),
        Container(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 10.0,
              top: 8,
              bottom: 8,
            ),
            child: Text('GOOGLE APPS'),
          ),
        ),
        builderList('Calendar', Icons.calendar_today, () {}),
        builderList('Contacts', Icons.account_circle_outlined, () {}),
        Divider(),
        builderList('Settings', Icons.settings_outlined, () {}),
        builderList('Help & feedback', Icons.help_outline_sharp, () {}),
      ],
    )
        // child: Column(
        //   children: [
        //     Container(
        //       height: 100,
        //       width: double.infinity,
        //       padding: EdgeInsets.only(
        //         top: 20,
        //         left: 20,
        //         bottom: 20,
        //       ),
        //       alignment: Alignment.centerLeft,
        //       //color: Theme.of(context).primaryColor,
        //       child: Text(
        //         'Gmail',
        //         style: TextStyle(
        //           // fontWeight: FontWeight.w900,
        //           fontSize: 30,
        //           color: Colors.red,
        //         ),
        //       ),
        //     ),

        //     SizedBox(
        //       height: 20,
        //     ),
        //     builderList("Meal", Icons.restaurant, () {
        //       Navigator.of(context).pushReplacementNamed("/");
        //     }),
        //     builderList('Settings', Icons.settings, () {
        //       // Navigator.of(context).pushReplacementNamed(SettingScreen.routname);
        //     }),
        //   ],
        );
  }
}
