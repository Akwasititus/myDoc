import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import 'notification_model.dart';
import 'notifications_details.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  String currentTime = DateFormat.jm().format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    final isDarkTheme = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      //appBar: const CustomAppBar(child: Text('Notifications')),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final getNotify = notifications[index];
          return GestureDetector(
            onTap: () {
              setState(() {
                // Toggle the 'isRead' property when the notification is tapped again.
                getNotify.isRead = !getNotify.isRead;
              });
              Get.to(const NotificationDetail(),
                  arguments: {
                    
                    'msg': getNotify.msg,
                    'time': getNotify.time,
                    'msgDisc': getNotify.msgDisc,
                  },
                  duration: const Duration(seconds: 1),
                  transition: Transition.native);
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: getNotify.isRead
                    ? const Color(0xFFFFFFFF)
                    : const Color(0xFFF5F5F5),
                borderRadius: BorderRadius.circular(10.0),
              ),
              height: 112,
              child: ListTile(
                leading: const CircleAvatar(
                  radius: 50,
                  backgroundColor: Color(0xFFECE7FF),
                  child: Icon(Icons.message)
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(getNotify.msg),
                    Expanded(child: Container()),
                    Text(getNotify.time),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
