import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:test_1/models/tasks.dart';
import 'package:test_1/screens/tasks_screen.dart';

import 'blocs/bloc_export.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  BlocOverrides.runZoned(
    () {
      runApp(const MyApp());
    },
  );
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
    return BlocProvider(
      create: (context) => TasksBloc()
        ..add(AddTask(
          task: Task(title: 'Task 1'),
          
        )),
      child: PlatformApp(
        localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
          DefaultWidgetsLocalizations.delegate,
          DefaultMaterialLocalizations.delegate,
        ],
        debugShowCheckedModeBanner: false,
        title: 'Task Tracker',
        material: (context, platform) => MaterialAppData(),
        cupertino: (context, platform) => CupertinoAppData(),
        home: const TasksScreen(),
        //routes: {
        //'/page2': (context) => const Page2(),},
      ),
    );
  }
}
