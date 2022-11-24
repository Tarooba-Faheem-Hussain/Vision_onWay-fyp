//import 'dart:async';
//import 'dart:ffi';
// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

import 'package:sign_in/screens/home/congratulation.dart';
//import 'package:sign_in/screens/home/fday1.dart';
// import 'package:get/get_state_manager/src/simple/list_notifier.dart';
// import 'package:sign_in/controllerBindings.dart';
//import 'package:video_player/video_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// ignore: camel_case_types
class Day1_Exercises extends StatefulWidget {
  const Day1_Exercises({Key? key}) : super(key: key);

  @override
  State<Day1_Exercises> createState() => _Day1_ExercisesState();
}

// ignore: camel_case_types
class _Day1_ExercisesState extends State<Day1_Exercises> {
  late YoutubePlayerController controller;

  @override
  // ignore: must_call_super
  void initState() {
    // super.initState();

    const url = 'https://youtu.be/qcVlGnq5B4Y';

    controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(url)!,
      flags: const YoutubePlayerFlags(
        mute: false,
        loop: false,
        autoPlay: true,
      ),
    );
  }

  @override
  void deactivate() {
    controller.pause();

    super.deactivate();
  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => YoutubePlayerBuilder(
        player: YoutubePlayer(
          controller: controller,
        ),
        builder: (Context, Player) => Scaffold(
          appBar: AppBar(
            title: Text(
              'Day 1',
              style: TextStyle(
                  fontSize: 21, color: Color.fromARGB(255, 255, 255, 255)),
            ),
            elevation: 1.0,
            backgroundColor: Color.fromARGB(255, 177, 96, 191),
            leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              color: Color.fromARGB(255, 255, 255, 255),
              icon: Icon(Icons.arrow_back),
            ),
          ),
          body: ListView(
            children: [
              Player,
              Text(
                  '\nDay 1: \n 7 Exercises in 5 minutes duraion',
                  style: TextStyle(
                    height: 1.3,
                    fontSize: 25.0,
                    color: Colors.purple[300],
                  )),
              SizedBox(
                height: 50,
              ),
              const ExpansionTile(
                //backgroundColor:Color.fromARGB(255, 202, 190, 204),
                title: Text('How to contact us?'),
                textColor: Colors.black,
                // subtitle: Text('Trailing expansion arrow icon'),
                children: <Widget>[
                  ListTile(
                      title:
                          Text('Send us email to "Visiononway22@gmail.com"')),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Congratulation()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 234, 222, 222),
                  onPrimary: Colors.purple[300],
                  side: BorderSide(
                      color: Color.fromARGB(255, 133, 17, 154), width: 2),
                ),
                child: const Text(
                  'Done!!',
                  style: TextStyle(
                    fontSize: 34,
                  ),
                ),
              )
            ],
          ),
        ),
      );
}
