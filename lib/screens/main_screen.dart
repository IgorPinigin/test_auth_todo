import 'package:flutter/material.dart';
import 'package:test_1/constants/decorations.dart';
import 'package:test_1/widgets/next_button.dart';
import 'package:test_1/widgets/tex_form_field.dart';
import '../constants/colors.dart';

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
  TextStyle bottomTextStyle = new TextStyle(color: Colors.black, fontSize: 18);

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
      ContainerStart(sWidth: sWidth, sHeight: sHeight),
      ContainerForm(sWidth: sWidth, sHeight: sHeight),
      ContainerAuth(sWidth: sWidth, sHeight: sHeight),
    ];
    return Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        backgroundColor: background,
        body: Column(
          children: [
            contentWidgets[index],
            Spacer(flex: 25),
            NextButton(
              sWidth: sWidth * 0.8,
              sHeight: sHeight * 0.8,
              title: titleButton,
              onTapHandler: () {
                setState(() {
                  if (index == 0) {
                    index = 1;
                    titleButton = "Register";
                    bottomText = "Already have an account? sign in";
                  } else if (index == 1) {
                    index = 2;
                    titleButton = "LOG IN";
                    bottomText = "Don’t have an account? sign up";
                  } else if (index == 2) {
                    index = 0;
                    titleButton = "Get Started";
                    bottomText = "";
                  }
                });
              },
            ),
            const Spacer(
              flex: 10,
            ),
            Text(
              bottomText,
              style: bottomTextStyle,
            ),
            const Spacer(
              flex: 10,
            )
          ],
        ));
  }
}

class PhoneImage extends StatelessWidget {
  const PhoneImage({
    super.key,
    required this.path,
  });

  final String path;

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      Image(
        image: AssetImage(path),
        fit: BoxFit.contain,
      )
    ]);
  }
}

class ContainerStart extends StatelessWidget {
  const ContainerStart({
    super.key,
    required this.sWidth,
    required this.sHeight,
  });

  final double sWidth;
  final double sHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: circles,
      width: sWidth,
      height: sHeight * 0.8,
      child: FractionallySizedBox(
        widthFactor: .8,
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Spacer(
                        flex: 9,
                      ),
                      Expanded(
                        flex: 12,
                        child: PhoneImage(
                          path: "assets/images/phone.png",
                        ),
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          "Get things done with TODo",
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 18,
                              color: Colors.black87,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Flexible(
                        flex: 10,
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fames lectus fermentum ultrices ipsum ornare id lorem vestibulum, congue. Quis nulla vel consectetur ultrices. Nulla est faucibus mollis faucibus sed libero amet. Facilisis ut arcu facilisis egestas iaculis nec sit. Donec adipiscing ac massa egestas.",
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 16,
                              color: Colors.black54,
                              fontWeight: FontWeight.w100),
                        ),
                      ),
                    ]))
          ],
        ),
      ),
    );
  }
}

class ContainerForm extends StatelessWidget {
  const ContainerForm({
    super.key,
    required this.sWidth,
    required this.sHeight,
  });

  final double sWidth;
  final double sHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: circles,
      width: sWidth,
      height: sHeight * 0.8,
      child: FractionallySizedBox(
        widthFactor: .8,
        child: Form(
            child: Column(children: [
          Expanded(
            flex: 1,
            child: Column(
              children: const [
                Spacer(
                  flex: 100,
                ),
                Text(
                  "Welcome Onboard !",
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(
                  flex: 10,
                ),
                Text(
                  "Let's help you meet up eour tasks",
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 18,
                      color: Colors.black54,
                      fontWeight: FontWeight.w100),
                ),
                Spacer(
                  flex: 30,
                ),
                TextFormFieldAuth(insertHintText: "Enter your full name"),
                Spacer(
                  flex: 10,
                ),
                TextFormFieldAuth(insertHintText: "Enter email"),
                Spacer(
                  flex: 10,
                ),
                TextFormFieldAuth(insertHintText: "Enter password"),
                Spacer(
                  flex: 10,
                ),
                TextFormFieldAuth(insertHintText: "Confirm password"),
              ],
            ),
          ),
        ])),
      ),
    );
  }
}

class ContainerAuth extends StatelessWidget {
  const ContainerAuth({
    super.key,
    required this.sWidth,
    required this.sHeight,
  });

  final double sWidth;
  final double sHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: circles,
      width: sWidth,
      height: sHeight * 0.8,
      child: FractionallySizedBox(
        widthFactor: .8,
        child: Expanded(
          flex: 1,
          child: Column(
            children: [
              const Spacer(
                  flex: 100,
                ),
              const Text(
                "Welcome Back!",
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              const Spacer(
                  flex: 3,
                ),
              const Expanded(flex: 100, child: PhoneImage(path: "assets/images/listViewImage.png")),
              const Spacer(
                  flex: 10,
                ),
              Expanded(
                flex: 100,
                child: Form(
                    child: Column(
                  children: const [
                    TextFormFieldAuth(insertHintText: "Enter your email"),
                    Spacer(
                    flex: 1,
                  ),
                    TextFormFieldAuth(insertHintText: "Enter your password"),
                    Spacer(
                    flex: 90,
                  ),
                    Text("Forget Password?",
                        style: TextStyle(
                            color: activeTextColor,
                            fontFamily: 'Roboto',
                            fontSize: 20,
                            fontWeight: FontWeight.w100))
                  ],
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
