import 'package:flutter/material.dart';

import 'package:flutter_blo/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'user': (BuildContext context) => const UserScreen(),
  };
}
