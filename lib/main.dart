import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:test_1/models/tasks.dart';
import 'package:test_1/screens/tasks_screen.dart';

import 'blocs/bloc_export.dart';
import 'firebase_options.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );

  //final storage = await HydratedStorage.build(storageDirectory: await getApplicationDocumentsDirectory());
  
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getTemporaryDirectory(),
  );
  //print(HydratedBloc.storage.toString());
  {
    runApp(const MyApp());
  }

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));
    return BlocProvider(
      create: (_) => TasksBloc(),
      
      child: MaterialApp(
        // localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
        //   DefaultWidgetsLocalizations.delegate,
        //   DefaultMaterialLocalizations.delegate,
        // ],
        // debugShowCheckedModeBanner: false,
        // title: 'Task Tracker',
        // material: (context, platform) => MaterialAppData(),
        // cupertino: (context, platform) => CupertinoAppData(),
        home: TasksScreen(),
        //routes: {
        //'/page2': (context) => const Page2(),},
      ),
    );
  }
}
