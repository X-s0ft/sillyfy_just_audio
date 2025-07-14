import '../screens/all_screens.dart';

final rout = {
  '/': (cont) => NavigationFolder(),
  '/about': (cont) => AboutScreen(),
  '/option': (cont) => OptionScreen(),
  '/player': (cont) => PlayerScreen(),
  '/playlist': (cont) => PlaylistScreen(),
};