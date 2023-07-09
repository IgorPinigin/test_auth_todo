import 'package:flutter/material.dart';
import 'package:test_1/screens/start_screen.dart';
import 'package:test_1/widgets/next_button.dart';
import '../constants/colors.dart';
import 'login_screen.dart';
import 'auth_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late List<Widget> contentWidgets;
  int index = 0;
  String bottomText = "";

  String titleButton = "Get Started";
  TextStyle bottomTextStyle =
      const TextStyle(color: Colors.black, fontSize: 18);

  @override
  void initState() {
    //print(index);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //String titleButton = "";
    final sHeight = MediaQuery.of(context).size.height;
    final sWidth = MediaQuery.of(context).size.width;
    contentWidgets = [
      //ContainerStart(sWidth: sWidth, sHeight: sHeight),
      //ContainerForm(sWidth: sWidth, sHeight: sHeight),
      //ContainerAuth(sWidth: sWidth, sHeight: sHeight),
      //TasksScreen(),
    ];
    return Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        backgroundColor: background,
        body: Column(
          children: [
            contentWidgets[index],
            const Spacer(flex: 25),
            NextButton(
              sWidth: sWidth * 0.8,
              sHeight: sHeight * 0.8,
              title: titleButton,
              onTapHandler: () {
                setState(() {
                  if (index == 0) {
                    index = 1;
                    titleButton = "Register";
                  } else if (index == 1) {
                    //Navigator.pushNamed(context, '/tasks');
                    //titleButton = "LOG IN";
                    titleButton = "";
                    //bottomText = "Don’t have an account? sign up";
                    bottomText = "";
                  }  else if (index == 2) {
                     index = 0;
                     titleButton = "Get Started";
                     bottomText = "";
                  } 
                  // else if (index == 3) {
                  //   index = 0;
                  //   //titleButton = "Get Started";
                  //   //bottomText = "";
                  // }
                });
              },
            ),
            const Spacer(
              flex: 10,
            ),
            RichText(
                text: TextSpan(children: [
              const TextSpan(
                  text: 'Already have an account?',
                  style: TextStyle(color: Colors.black87)),
              WidgetSpan(
                  child: GestureDetector(
                child: const Text(
                  'sign in',
                  style: TextStyle(color: activeTextColor),
                ),
                onTap: () => index = 2,
              ))
            ])),
            const Spacer(
              flex: 10,
            )
          ],
        )
      );
  }
}
