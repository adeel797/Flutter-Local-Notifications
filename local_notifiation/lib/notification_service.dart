import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationService {
  // Singleton pattern
  static final NotificationService instance = NotificationService._();

  factory NotificationService() => instance;

  NotificationService._();

  final notificationPlugin = FlutterLocalNotificationsPlugin();
  bool _isInitialized = false; // Removed 'final' to allow updates (optional)

  bool get isInitialized => _isInitialized;

  // Initialization
  Future<void> initNotification() async {
    if (_isInitialized) return; // Prevent re-initialization (optional)

    // Prepare Android initialization settings
    const initSettingAndroid = AndroidInitializationSettings('@mipmap/ic_launcher');
    const initSettings = InitializationSettings(android: initSettingAndroid);

    // Initialize the plugin
    await notificationPlugin.initialize(initSettings);

    // Request permission for Android 13+
    final androidPlugin = notificationPlugin
        .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>();
    if (androidPlugin != null) {
      await androidPlugin.requestNotificationsPermission();
    }

    _isInitialized = true; // Update initialization status (optional)
  }

  // Notification details setup
  NotificationDetails notificationDetails() {
    return const NotificationDetails(
      android: AndroidNotificationDetails(
        'daily_channel_id',
        'Daily Notifications',
        channelDescription: 'Daily Notification Channel',
        importance: Importance.max,
        priority: Priority.high,
      ),
    );
  }

  // Show notification
  Future<void> showNotifications({
    int id = 0,
    String? title,
    String? body,
  }) async {
    return notificationPlugin.show(
      id,
      title,
      body,
      notificationDetails(), // Use the defined notification details
    );
  }
}