import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:web_pushnotifications/feature/module/admin/home/presentation/widgets/song_tile.dart';
import 'package:web_pushnotifications/feature/module/admin/home/view_model/home_view_model.dart';

class HomeAdminWeb extends ConsumerStatefulWidget {
  const HomeAdminWeb({super.key});

  @override
  ConsumerState<HomeAdminWeb> createState() => _HomeWebState();
}

class _HomeWebState extends ConsumerState<HomeAdminWeb> {
  @override
  void initState() {
    // songViewModel = ref.watch(songViewProvider);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final counter = ref.watch(songViewProvider);
    log("BUILDING HOME");
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Users Suggetions'),
            ),
          ],
        ),
        Text("${counter.counter}"),
        // Expanded(
        //   child: ListView.builder(
        //     itemBuilder: (context, index) => SongTileWidget(
        //       isSuggestions: false,
        //       index: index,
        //     ),
        //     itemCount: 10,
        //   ),
        // ),
        FloatingActionButton(onPressed: counter.increment),
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
    );
  }
}
