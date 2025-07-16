import 'package:flutter/material.dart';
import 'all_screens.dart';

class NavigationFolder extends StatefulWidget {
  const NavigationFolder({super.key});

  @override
  State<NavigationFolder> createState() => _NavigationFolderState();
}

class _NavigationFolderState extends State<NavigationFolder> {
  int index = 0;
  List listScreens = [PlaylistScreen(), AboutScreen()];

  void _onTapitem(int indexscreen) {
    setState(() {
      index = indexscreen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listScreens.elementAt(index),
      bottomNavigationBar: NavigationBar(
        height: 70,
        onDestinationSelected: _onTapitem,
        selectedIndex: index,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.music_note),
            label: 'Playlist',
          ),
          NavigationDestination(icon: Icon(Icons.info), label: 'About'),
        ],
      ),
    );
  }
}
