import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:test_1/models/tasks.dart';
import 'package:test_1/screens/auth_screen.dart';
import 'package:test_1/screens/login_screen.dart';
import 'package:test_1/screens/main_screen.dart';
import 'package:test_1/screens/my_drawer.dart';
import 'package:test_1/screens/recycle_bin.dart';
import 'package:test_1/screens/rich_text_example.dart';
import 'package:test_1/screens/start_screen.dart';
import 'package:test_1/screens/tasks_screen.dart';

import 'blocs/bloc_export.dart';
import 'firebase_options.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getTemporaryDirectory(),
  );

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
      
      child: PlatformApp(
        localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
          DefaultWidgetsLocalizations.delegate,
          DefaultMaterialLocalizations.delegate,
        ],
        debugShowCheckedModeBanner: false,
        title: 'Task Tracker',
        material: (context, platform) => MaterialAppData(),
        cupertino: (context, platform) => CupertinoAppData(),
        home: StartScreen(),
        routes: {
        '/bin': (context) => const RecycleBin(),
        '/tasks': (context) => const TasksScreen(),
        '/auth': (context) => const AuthScreen(),
        '/login': (context) => const LoginScreen(),
        
        },
      ),
    );
  }
}
