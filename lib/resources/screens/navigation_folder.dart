import 'package:flutter/material.dart';
import 'all_screens.dart';

class NavigationFolder extends StatefulWidget {
  const NavigationFolder({super.key});

  @override
  State<NavigationFolder> createState() => _NavigationFolderState();
}


class _NavigationFolderState extends State<NavigationFolder> {
  int index = 0;
  List listScreens = [const PlaylistScreen(), const AboutScreen()];

  void _onTapitem(int indexscreen) {
    setState(() {
      index = indexscreen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      // IndexedStack(index: index, children: [listScreens.elementAt(index)],) ,
      listScreens.elementAt(index),
      bottomNavigationBar: NavigationBar(
        height: 60,
        onDestinationSelected: _onTapitem,
        selectedIndex: index,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.music_note, color: Colors.white,),
            label: 'Playlist',
          ),
          NavigationDestination(icon: Icon(Icons.info,  color: Colors.white,), label: 'About'),
        ],
      ),
    );
  }
}
