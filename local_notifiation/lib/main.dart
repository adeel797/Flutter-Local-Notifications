import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_notifiation/notification_service.dart';
import 'my_home_page.dart';

void main() async {  // Add 'async' since initNotification is async
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));

  await NotificationService.instance.initNotification(); // Use singleton instance
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}