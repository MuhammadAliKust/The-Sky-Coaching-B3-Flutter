import 'package:flutter/material.dart';

class NotificationView extends StatelessWidget {
  NotificationView({super.key});

  List<String> notificationList = [
    "Order Confirmed",
    "Order Cancelled",
    "Purchase Confirmed"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Notification",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: ListView.builder(
          itemCount: 12,
          // scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, i) {
            return SizedBox(
              width: 100,
              height: 100,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                    child: Text("Container 1"),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
