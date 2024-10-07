import 'package:flutter/material.dart';
import 'package:web_pushnotifications/feature/module/admin/home/presentation/web/home_screen_web.dart';
import 'package:web_pushnotifications/utils/responsive_view.dart';

class HomeViewAdminScreen extends StatelessWidget {
  const HomeViewAdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: TextButton(
                style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.blueAccent),
                    padding: WidgetStateProperty.all(
                      const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                    )),
                onPressed: () {},
                child: const Text(
                  'LOG OUT',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
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
