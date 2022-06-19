import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app.dart';
import 'pages/home_screen.dart';
import 'services/notifications_service.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      Provider<NotificationService>(create: (context) => NotificationService()),
      
    ],
    child: App(),
  ));
}
