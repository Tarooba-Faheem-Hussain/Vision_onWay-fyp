import 'package:flutter/material.dart';

class Congratulation extends StatefulWidget {
  const Congratulation({Key? key}) : super(key: key);

  @override
  State<Congratulation> createState() => _CongratulationState();
}

class _CongratulationState extends State<Congratulation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 227, 227, 255),
      body: Column(
        children: [
          
          Container(
            width: 380,
            height: 380,
            margin: EdgeInsets.only(top: 50, bottom: 30),
            decoration: BoxDecoration(
                image: DecorationImage(
                  
                    image: AssetImage(
              'assets/completed.png.png',
            ))),
          ),
          SizedBox(
            height: 5,
            width: 5,
          ),
          Text(
            "Congratulations",
            style: TextStyle(
                fontSize: 45,
                color: Color.fromARGB(192, 67, 19, 145),
                fontWeight: FontWeight.w900),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "you have sucessfully completed your today exercise",
            style: TextStyle(
                fontSize: 14,
                color: Color.fromARGB(192,67,19,145),
                fontWeight: FontWeight.w100),
          ),
        ],
      ),
    );
  }
}
