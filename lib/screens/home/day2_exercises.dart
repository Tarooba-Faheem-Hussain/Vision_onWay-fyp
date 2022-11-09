//import 'dart:async';
//import 'dart:ffi';
// ignore_for_file: non_constant_identifier_names, deprecated_member_use
import 'package:flutter/material.dart';
//import 'package:sign_in/screens/home/congratulation.dart';
// import 'package:get/get_state_manager/src/simple/list_notifier.dart';
// import 'package:sign_in/controllerBindings.dart';
//import 'package:video_player/video_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'congratulation.dart';

// ignore: camel_case_types
class Day2_Exercises extends StatefulWidget {
  const Day2_Exercises({Key? key}) : super(key: key);

  @override
  State<Day2_Exercises> createState() => _Day2_ExercisesState();
}

// ignore: camel_case_types
class _Day2_ExercisesState extends State<Day2_Exercises> {
  late YoutubePlayerController controller;

  get hasVideoFinished => null;

  @override
  // ignore: must_call_super
  void initState() {
    // super.initState();

    const url = 'https://youtu.be/jqGGyigVpys';

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
              Text('\nDay 1: \n 7 Exercises in 5 minutes duraion',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    height: 1.3,
                    fontSize: 20.0,
                    color: Color.fromARGB(255, 62, 53, 63),
                  )),
              SizedBox(
                height: 50,
              ),
              // FlatButton(
              //   child: Text('Completed'),
              //   onPressed: hasVideoFinished
              //       ? () => Navigatior.of(context).pop()
              //       : null,
              // ),
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
                  'Completed!',
                  style: TextStyle(
                    fontSize: 24.0,
                  ),
                ),
              )
            ],
          ),
        ),
      );
}
