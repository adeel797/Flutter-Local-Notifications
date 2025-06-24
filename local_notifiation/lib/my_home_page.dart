import 'package:flutter/material.dart';
import 'package:local_notifiation/notification_service.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                NotificationService.instance.showNotifications(
                  id: 0,
                  title: "Notification 1",
                  body: "This is the first notification",
                );
              },
              child: const Text('Send Notification 1'),
            ),
            ElevatedButton(
              onPressed: () {
                NotificationService.instance.showNotifications(
                  id: 1,
                  title: "Notification 2",
                  body: "This is the second notification",
                );
              },
              child: const Text('Send Notification 2'),
            ),
            ElevatedButton(
              onPressed: () {
                NotificationService.instance.showNotifications(
                  id: 2,
                  title: "Notification 3",
                  body: "This is the third notification",
                );
              },
              child: const Text('Send Notification 3'),
            ),
          ],
        ),
      ),
    );
  }
}