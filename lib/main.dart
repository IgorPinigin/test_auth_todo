import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:test_1/screens/main_screen.dart';
import 'package:test_1/widgets/next_button.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));
    return PlatformApp(
      localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
        DefaultWidgetsLocalizations.delegate,
        DefaultMaterialLocalizations.delegate,
      ],
      debugShowCheckedModeBanner: false,
      title: 'Task Tracker',
      material: (context, platform) => MaterialAppData(),
      cupertino: (context, platform) => CupertinoAppData(),
      home: const MainScreen(),
      //routes: {
      //'/page2': (context) => const Page2(),},
    );
  }
}