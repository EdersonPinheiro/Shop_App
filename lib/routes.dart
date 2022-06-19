import 'package:flutter/cupertino.dart';
import 'package:shop_app/pages/home_screen.dart';
import 'package:shop_app/pages/notification_page.dart';

class Routes {
  static Map<String, Widget Function(BuildContext)> list =
      <String, WidgetBuilder>{
    '/home': (_) => HomeScreen(),
    '/notification': (_) => NotificationPage(),
  };
  static String initial = '/home';
  static GlobalKey<NavigatorState>? navigatorKey = GlobalKey<NavigatorState>();
}
