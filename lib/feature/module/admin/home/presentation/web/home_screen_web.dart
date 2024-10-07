import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:web_pushnotifications/feature/module/admin/home/presentation/widgets/song_tile.dart';

class HomeAdminWeb extends StatefulWidget {
  const HomeAdminWeb({super.key});

  @override
  State<HomeAdminWeb> createState() => _HomeWebState();
}

class _HomeWebState extends State<HomeAdminWeb> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.blueAccent),
                    padding: WidgetStateProperty.all(
                      const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                    )),
                onPressed: () {
                  
                },
                child: const Text(
                  'LOGOUT',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Users Suggetions'),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => SongTileWidget(
                isSuggestions: false,
                index: index,
              ),
              itemCount: 10,
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Songs'),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => SongTileWidget(
                isSuggestions: true,
                index: index,
              ),
              itemCount: 10,
            ),
          )
        ],
      ),
    );
  }
}
