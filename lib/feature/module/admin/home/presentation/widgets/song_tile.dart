import 'package:flutter/material.dart';

class SongTileWidget extends StatelessWidget {
  const SongTileWidget(
      {super.key, required this.index, required this.isSuggestions});
  final int index;
  final bool isSuggestions;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: isSuggestions ? Colors.blue : Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Row(
                children: [
                  Text('$index'),
                  const Text('Song Name'),
                ],
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.play_circle_fill_outlined),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
