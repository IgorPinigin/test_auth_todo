import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Color.fromARGB(255, 158, 208, 201),
        body: Column(children: [
          Row(
            children: [
              SizedBox(
                  height: 155,
                  child: Stack(alignment: Alignment.topLeft, children: const [
                    Image(
                      image: AssetImage("assets/images/ellipse.png"),
                      height: 255,
                      width: 210,
                      fit: BoxFit.cover,
                    )
                  ])),
            ],
          ),
          const Padding(padding: EdgeInsets.only(top: 51)),
          SizedBox(
              height: 179,
              child: Stack(alignment: Alignment.center, children: const [
                Image(
                  image:
                      AssetImage("assets/images/undraw_verified_re_4io7 2.png"),
                  height: 179,
                  width: 177,
                  fit: BoxFit.cover,
                )
              ])),
          const Padding(padding: EdgeInsets.only(top: 37)),
          const Text(
            "Get things done with TODo",
            style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 18,
                color: Colors.black87,
                fontWeight: FontWeight.bold),
          ),
          const Padding(padding: EdgeInsets.only(top: 40)),
          const SizedBox(
            width: 330,
            height: 165,
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fames lectus fermentum ultrices ipsum ornare id lorem vestibulum, congue. Quis nulla vel consectetur ultrices. Nulla est faucibus mollis faucibus sed libero amet. Facilisis ut arcu facilisis egestas iaculis nec sit. Donec adipiscing ac massa egestas.",
              style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 16,
                  color: Colors.black54,
                  fontWeight: FontWeight.w100),
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 52)),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 46, 158, 149),
              fixedSize: Size(302, 64),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),),
            child: const Text('Get Started', style: TextStyle(fontSize: 18, fontFamily: 'Roboto'),),
          )
        ]));
  }
}
