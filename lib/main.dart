import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'configs/routes/route_name.dart';
import 'configs/routes/routes.dart';
import 'configs/theme/themes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  ).then(
    (_) => runApp(
      const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Test Task',
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light, // Setting theme mode to dark
        theme: lightTheme, // Setting light theme
        darkTheme: darkTheme,
        initialRoute: RoutesName.splash, //initial route
        onGenerateRoute:
            Routes.generateRoute //separate class to handle all routes,
        );
  }
}
