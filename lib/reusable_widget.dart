import 'package:flutter/material.dart';

import 'models/notification.dart';

class ReusableWidgetView extends StatelessWidget {
  ReusableWidgetView({super.key});

  List<NotificationModel> notificationList = [
    NotificationModel(title: 'First Title', subTitle: 'First Subtitle'),
    NotificationModel(title: 'Second Title', subTitle: 'Second Subtitle'),
    NotificationModel(title: 'Third Title', subTitle: 'Third Subtitle'),
    NotificationModel(title: 'Fourth Title', subTitle: 'Fourth Subtitle'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Reusable Widgets",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView.builder(
          itemCount: notificationList.length,
          itemBuilder: (context, i) {
            return notificationTile(
                title: notificationList[i].title,
                subTitle: notificationList[i].subTitle);
          }),
    );
  }

  Widget notificationTile({required String title, required String subTitle}) {
    return ListTile(
      leading: Icon(
        Icons.notifications,
        color: Colors.black,
      ),
      title: Text(title),
      subtitle: Text(subTitle),
      trailing: Icon(
        Icons.arrow_forward_ios,
        size: 17,
      ),
    );
  }
}
