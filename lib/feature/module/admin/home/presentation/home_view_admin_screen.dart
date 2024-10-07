import 'package:flutter/material.dart';
import 'package:web_pushnotifications/feature/module/admin/home/presentation/web/home_screen_web.dart';
import 'package:web_pushnotifications/utils/responsive_view.dart';

class HomeViewAdminScreen extends StatelessWidget {
  const HomeViewAdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: const Responsive(
          mobile: HomeAdminWeb(),
          tablet: HomeAdminWeb(),
          desktop: HomeAdminWeb(),
        ),
        floatingActionButton: CircleAvatar(
          backgroundColor: Colors.blueAccent,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
