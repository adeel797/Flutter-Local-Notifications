# Flutter-Local-Notifications 📱🔔

Welcome to the **Flutter Local Notification**! This Flutter project showcases how to implement local notifications using the `flutter_local_notifications` package. It demonstrates requesting notification permissions and sending multiple notifications with custom messages, helping you understand how notifications work in Flutter. 🚀

## Features ✨
- 🛠️ Request notification permissions for Android 13+.
- 📩 Send multiple local notifications with unique IDs and custom messages.
- 🔄 Singleton pattern for `NotificationService` to ensure consistent notification handling.
- 🖼️ Simple UI with buttons to trigger permission requests and notifications.

## Requirements 📋
- **Flutter SDK**: 3.0.0 or higher
- **Dart**: 2.17.0 or higher
- **Android SDK**: API 21 or higher (for Android 13+ notification permissions)

## Step-by-Step Guide 🛠️

### Step 1: Clone the Repository 📥
1. **Open Terminal/Command Prompt**:
   - Navigate to the directory where you want to clone the repository.

2. **Clone the Repository**:
   - Run the following command:
     ```bash
     git clone https://github.com/adeel797/flutter-local-notifications.git
     ```

3. **Navigate to the Project**:
   - Move to the project folder:
     ```bash
     cd flutter-local-notifications
     ```

### Step 2: Install Dependencies 📦
1. **Ensure Flutter is Installed**:
   - If you don’t have Flutter installed, follow the [official Flutter installation guide](https://docs.flutter.dev/get-started/install).

2. **Install Dependencies**:
   - Run the following command to fetch all required packages:
     ```bash
     flutter pub get
     ```

### Step 3: Configure Android Permissions ⚙️
- For **Android 13 and above**, add the `POST_NOTIFICATIONS` permission to `android/app/src/main/AndroidManifest.xml`:
  ```xml
  <manifest xmlns:android="http://schemas.android.com/apk/res/android">
      <uses-permission android:name="android.permission.POST_NOTIFICATIONS"/>
      <application
          android:label="your_app_name"
          android:icon="@mipmap/ic_launcher">
          <!-- Other configurations -->
      </application>
  </manifest>
  ```

### Step 4: Prepare for Platform-Specific Configurations (Optional) 🛠️
1. **Android**:
   - Ensure Android Studio and Android SDK are installed. Set up an emulator or connect a physical device.

2. **iOS (macOS only)**:
   - Ensure Xcode is installed and configured. Use an iOS simulator or a connected physical device.

3. **Check Configuration**:
   - Run `flutter doctor` to verify your setup:
     ```bash
     flutter doctor
     ```

### Step 5: Run the App 🚀
1. **Run on a Device or Emulator**:
   - Ensure a device is connected or an emulator is running.
   - Launch the app with:
     ```bash
     flutter run
     ```
   - The app should build and run on the selected device.

### Step 6: Explore and Modify the Code 🖌️
1. **Open in an IDE**:
   - Open the project in [Android Studio](https://developer.android.com/studio) or [Visual Studio Code](https://code.visualstudio.com/) to explore, modify, and debug the code.

2. **Experiment**:
   - Play around with the code to deepen your understanding of how notifications work in Flutter! 🧪

## Project Structure 📂
- `lib/main.dart`: Entry point, initializes `NotificationService` and runs the app.
- `lib/my_home_page.dart`: UI with buttons to request permissions and send notifications.
- `lib/notification_service.dart`: Singleton class handling notification initialization, permission requests, and sending notifications.

## Usage 🎯
- **Request Permission**: Tap the "Request Notification Permission" button to prompt the Android notification permission dialog (required for Android 13+).
- **Send Notifications**: Tap any of the "Send Notification" buttons to trigger a local notification with a unique title and body.

## Code Highlights 💡
- **Singleton Pattern**: `NotificationService` uses a singleton to ensure a single instance of `FlutterLocalNotificationsPlugin`.
- **Permission Handling**: Separated `requestNotificationPermission` method to handle Android 13+ permissions.
- **Notification Details**: Configured with a high-priority Android channel (`daily_channel_id`) for reliable delivery.

## Dependencies 📚
- `flutter_local_notifications`: ^17.2.4 (Check `pubspec.yaml` for the latest version)
- `flutter`: Standard Flutter SDK

## Troubleshooting 🛠️
- **Notifications not showing**:
  - Ensure permissions are granted (check Android settings or tap the permission button).
  - Verify the device is not in "Do Not Disturb" mode.
  - Confirm the `POST_NOTIFICATIONS` permission is added to `AndroidManifest.xml`.
- **Plugin not initialized**:
  - Ensure `NotificationService.instance.initNotification()` is called in `main.dart` before `runApp`.

## Contributing 🤝
Feel free to submit issues or pull requests for improvements or bug fixes. Your contributions are welcome! 😊

## Acknowledgments 🙌
- Built with the `flutter_local_notifications` package.
- Inspired by Flutter’s local notification documentation.

Happy coding, and enjoy learning how notifications work in Flutter! 🎉
