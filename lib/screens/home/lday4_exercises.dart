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
class LDay4_Exercises extends StatefulWidget {
  const LDay4_Exercises({Key? key}) : super(key: key);

  @override
  State<LDay4_Exercises> createState() => _LDay4_ExercisesState();
}

// ignore: camel_case_types
class _LDay4_ExercisesState extends State<LDay4_Exercises> {
  late YoutubePlayerController controller;

  @override
  // ignore: must_call_super
  void initState() {
    // super.initState();

    const url =
        'https://youtu.be/PEMIhefCEM4';

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
              'Day 4',
              style: TextStyle(
                  fontSize: 21, color: Color.fromARGB(255, 255, 255, 255)),
            ),
            elevation: 1.0,
            backgroundColor: Color.fromARGB(255, 22, 142, 172),
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
                  ' Monkaa\n - Animation Cartoon ...............\n .................................',
                  style: TextStyle(
                    height: 1.3,
                    fontSize: 25.0,
                    color: Color.fromARGB(255, 36, 169, 202),
                  )),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>Congratulation() ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary:  Color.fromARGB(212, 215, 255, 255),
                  onPrimary: Color.fromARGB(255, 36, 169, 202),
                  side: BorderSide(
                      color: Color.fromARGB(255, 22, 142, 172), width: 2),
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
