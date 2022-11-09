import 'package:flutter/material.dart';
import 'package:sign_in/screens/home/lday7_exercise.dart';
//import 'day1_exercises.dart';

class Lday7 extends StatefulWidget {
  @override
  State<Lday7> createState() => _WorkoutState();
}

class _WorkoutState extends State<Lday7> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Day 7',
            style: TextStyle(
                fontSize: 21, color: Color.fromARGB(255, 255, 255, 255)),
          ),
          elevation: 6.0,
          backgroundColor: Color.fromARGB(255, 22, 142, 172),
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            color: Color.fromARGB(255, 255, 255, 255),
            icon: Icon(Icons.arrow_back),
          ),
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    '10 Mins, 8 Exercises',
                    style: TextStyle(
                        height: 2.7,
                        fontSize: 18,
                        color: Color.fromARGB(255, 22, 142, 172)),
                  ),
                  SizedBox(
                    height: 1,
                    width: 100.0,
                  ),
                  InkWell(
                    // splashColor: Colors.purple[200],
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            elevation: 5,
                            actions: [
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text.rich(
                                  TextSpan(
                                    text: 'knee to chest stretch left',
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: '\n\nDuration 00:40 \n\n',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                          text:
                                              'Lie on the floor with your legs extended. Lift your left knee up and grab it with both hands. pull your left  knee towards your chest as much as you can while keeping your right leg straight on the ground .hold this position for a few seconds'),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    child: Row(
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.arrow_back),
                                        ),
                                        Text("7/ 7"),
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.arrow_forward),
                                        ),
                                      ],
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text("CLOSE"),
                                  ),
                                ],
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Card(
                      color: Color.fromARGB(212, 215, 255, 255),
                      margin: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 15.0,
                      ),
                      elevation: 5.0,
                      child: ListTile(
                        leading: Icon(
                          Icons.album,
                          size: 65,
                          color: Color.fromARGB(255, 22, 142, 172),
                        ),
                        title: Text('Knee To Chest Stretch Left',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Color.fromARGB(255, 36, 169, 202),
                            )),
                        subtitle: Text('40 seconds',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Color.fromARGB(255, 36, 169, 202),
                            )),
                      ),
                    ),
                  ),
                  InkWell(
                    // splashColor: Colors.purple[200],
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            elevation: 5,
                            actions: [
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text.rich(
                                  TextSpan(
                                    text: 'Knee To Chest Stretch right',
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: '\n\nDuration 00:40 \n\n',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                          text:
                                              'Lie on the floor with your legs extended. Lift your right knee up and grab it with both hands.pull your right knee towards your chest as much as you can while keeping your left leg straight on the ground .hold this position for a few seconds'),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    child: Row(
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.arrow_back),
                                        ),
                                        Text("5/ 7"),
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.arrow_forward),
                                        ),
                                      ],
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text("CLOSE"),
                                  ),
                                ],
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Card(
                      color: Color.fromARGB(212, 215, 255, 255),
                      margin: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 15.0,
                      ),
                      elevation: 5.0,
                      child: ListTile(
                        leading: Icon(
                          Icons.album,
                          size: 65,
                          color: Color.fromARGB(255, 22, 142, 172),
                        ),
                        title: Text('Knee To Chest Stretch Reft',
                            style: TextStyle(
                                fontSize: 25.0,
                                color: Color.fromARGB(255, 36, 169, 202))),
                        subtitle: Text('40 seconds',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Color.fromARGB(255, 36, 169, 202),
                            )),
                      ),
                    ),
                  ),
                  InkWell(
                    // splashColor: Colors.purple[200],
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            elevation: 5,
                            actions: [
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text.rich(
                                  TextSpan(
                                    text: 'High Stepping',
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: '\n\nDuration 00:40 \n\n',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                          text:
                                              'Run in place while pulling your knees as high as possible with each step.keep your upper body upright during this exercise'),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    child: Row(
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.arrow_back),
                                        ),
                                        Text("7/ 7"),
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.arrow_forward),
                                        ),
                                      ],
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text("CLOSE"),
                                  ),
                                ],
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Card(
                      color: Color.fromARGB(212, 215, 255, 255),
                      margin: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 15.0,
                      ),
                      elevation: 5.0,
                      child: ListTile(
                        leading: Icon(
                          Icons.album,
                          size: 65,
                          color: Color.fromARGB(255, 22, 142, 172),
                        ),
                        title: Text('High Stepping ',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Color.fromARGB(255, 36, 169, 202),
                            )),
                        subtitle: Text('40 s',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Color.fromARGB(255, 36, 169, 202),
                            )),
                      ),
                    ),
                  ),
                  
                  InkWell(
                    //   splashColor: Colors.purple[200],
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            elevation: 5,
                            actions: [
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text.rich(
                                  TextSpan(
                                    text: 'Butt kicks',
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: '\n\nDuration 00:40 \n\n',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                          text:
                                              'Stand up on the floor then run in place while kicking your heel up to touch your butt with each step try to do it as fast as you can it’s A great exercise for the gluteus and hamstrings '),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    child: Row(
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.arrow_back),
                                        ),
                                        Text("7/ 7"),
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.arrow_forward),
                                        ),
                                      ],
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text("CLOSE"),
                                  ),
                                ],
                              ),
                            ],
                          );
                        },
                      );
                    },

                    child: Card(
                      color: Color.fromARGB(212, 215, 255, 255),
                      margin: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 15.0,
                      ),
                      elevation: 5.0,
                      child: ListTile(
                        leading: Icon(
                          Icons.album,
                          size: 65,
                          color: Color.fromARGB(255, 22, 142, 172),
                        ),
                        title: Text('Butt Kicks',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Color.fromARGB(255, 36, 169, 202),
                            )),
                        subtitle: Text('40 seconds',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Color.fromARGB(255, 36, 169, 202),
                            )),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.purple[200],
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            elevation: 5,
                            actions: [
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text.rich(
                                  TextSpan(
                                    text: 'side-lying leg lift left',
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: '\n\nDuration 00:40 \n\n',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                          text:
                                              'Lie down on your side with your head rested on your right arm lift your upper leg  up and return to the start position make sure your left leg goes straight up and down during the exercise it’s  a great exercise for the gluteus '),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    child: Row(
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.arrow_back),
                                        ),
                                        Text("7/ 7"),
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.arrow_forward),
                                        ),
                                      ],
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text("CLOSE"),
                                  ),
                                ],
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Card(
                      color: Color.fromARGB(212, 215, 255, 255),
                      margin: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 15.0,
                      ),
                      elevation: 5.0,
                      child: ListTile(
                        leading: Icon(
                          Icons.album,
                          size: 65,
                          color: Color.fromARGB(255, 22, 142, 172),
                        ),
                        title: Text('side-lying leg lift left',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Color.fromARGB(255, 36, 169, 202),
                            )),
                        subtitle: Text('40 seconds',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Color.fromARGB(255, 36, 169, 202),
                            )),
                      ),
                    ),
                  ),
                  InkWell(
                    // splashColor: Colors.purple[200],
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            elevation: 5,
                            actions: [
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text.rich(
                                  TextSpan(
                                    text: 'side-lying leg lift right',
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: '\n\nDuration 00:40 \n\n',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                          text:
                                              'Lie down on your side with your head rested on your  left  arm lift your upper leg  up and return to the start position. Make sure your right leg  goes straight up and down during the exercise it’s  a great exercise for the gluteus '),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    child: Row(
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.arrow_back),
                                        ),
                                        Text("7/ 7"),
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.arrow_forward),
                                        ),
                                      ],
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text("CLOSE"),
                                  ),
                                ],
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Card(
                      color: Color.fromARGB(212, 215, 255, 255),
                      margin: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 15.0,
                      ),
                      elevation: 5.0,
                      child: ListTile(
                        leading: Icon(
                          Icons.album,
                          size: 65,
                          color: Color.fromARGB(255, 22, 142, 172),
                        ),
                        title: Text('side-lying leg lift right',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Color.fromARGB(255, 36, 169, 202),
                            )),
                        subtitle: Text('40 s',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Color.fromARGB(255, 36, 169, 202),
                            )),
                      ),
                    ),
                  ),
                  InkWell(
                    //  splashColor: Colors.purple[200],
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            elevation: 5,
                            actions: [
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text.rich(
                                  TextSpan(
                                    text: 'Butt Bridge',
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: '\n\nDuration 00:40 \n\n',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                          text:
                                              'Lie on your back with knees bent and feet flat on your floor put your arms flat at your sides.then lift your butt up and down'),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    child: Row(
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.arrow_back),
                                        ),
                                        Text("7/ 7"),
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.arrow_forward),
                                        ),
                                      ],
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text("CLOSE"),
                                  ),
                                ],
                              ),
                            ],
                          );
                        },
                      );
                    },

                    child: Card(
                      color: Color.fromARGB(212, 215, 255, 255),
                      margin: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 15.0,
                      ),
                      elevation: 5.0,
                      child: ListTile(
                        leading: Icon(
                          Icons.album,
                          size: 65,
                          color: Color.fromARGB(255, 22, 142, 172),
                        ),
                        title: Text('Butt Bridge',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Color.fromARGB(255, 36, 169, 202),
                            )),
                        subtitle: Text('40 seconds',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Color.fromARGB(255, 36, 169, 202),
                            )),
                      ),
                    ),
                  ),
                   InkWell(
                    //  splashColor: Colors.purple[200],
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            elevation: 5,
                            actions: [
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text.rich(
                                  TextSpan(
                                    text: 'plie squats',
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: '\n\nDuration 00:40 \n\n',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                          text:
                                              'Stand with your hands on your hips and feet a little wider than shoulder width apart then lower your body until your thighs are parallel to the floor your knee should be extended in the same direction as your tiptoes'),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    child: Row(
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.arrow_back),
                                        ),
                                        Text("7/ 7"),
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.arrow_forward),
                                        ),
                                      ],
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text("CLOSE"),
                                  ),
                                ],
                              ),
                            ],
                          );
                        },
                      );
                    },

                    child: Card(
                      color: Color.fromARGB(212, 215, 255, 255),
                      margin: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 15.0,
                      ),
                      elevation: 5.0,
                      child: ListTile(
                        leading: Icon(
                          Icons.album,
                          size: 65,
                          color: Color.fromARGB(255, 22, 142, 172),
                        ),
                        title: Text('Plie Squats',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Color.fromARGB(255, 36, 169, 202),
                            )),
                        subtitle: Text('40 seconds',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Color.fromARGB(255, 36, 169, 202),
                            )),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(212, 215, 255, 255),
                      onPrimary: Color.fromARGB(255, 36, 169, 202),
                      // foregroundColor: Colors.purple[300],
                      // backgroundColor: Color.fromARGB(255, 234, 222, 222),
                      side: BorderSide(
                          color: Color.fromARGB(255, 22, 142, 172), width: 2),
                    ),
                    child: const Text(
                      'Start',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LDay7_Exercises()));
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
