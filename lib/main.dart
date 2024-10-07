

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:web_pushnotifications/feature/module/admin/home/presentation/home_view_admin_screen.dart';
import 'package:web_pushnotifications/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const RiverPodWebApp(),
  );
}

class RiverPodWebApp extends StatelessWidget {
  const RiverPodWebApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeViewAdminScreen(),
    );
  }
}
