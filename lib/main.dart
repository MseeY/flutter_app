import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_in_app_messaging/firebase_in_app_messaging.dart';
import 'package:flutter/material.dart';
import 'logger/logger.dart';
import 'package:flutter_app/notifications/localNotification.dart';
import '';
LocalNotification localNotification = LocalNotification();
void main() {
  // 配置日志
  debugPrint = (String message,{int wrapWidth}){
    if (message.contains("[Home")) {
      logger.i(message);
    } else {
      logger.d(message);
    }
  };
  //
  WidgetsFlutterBinding.ensureInitialized();
  FirebaseInAppMessaging.instance.setMessagesSuppressed(false);
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.dumpErrorToConsole(details, forceReport: true);
  };
  localNotification = LocalNotification();
  Firebase.initializeApp().then((value) => {

  });

}
