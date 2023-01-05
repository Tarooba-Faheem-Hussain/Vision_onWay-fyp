// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_database/firebase_database.dart';
// import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
//import 'package:sign_in/screens/home/walking_screen.dart';
//import 'package:sign_in/screens/home/workout_screen.dart';

// ignore: camel_case_types

// class Workoutscreen extends Workout_screen {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
       
//        appBar: AppBar(
//           title: const Text('Workout Progres'),
//            backgroundColor:Color.fromARGB(255, 167, 124, 175),
//           centerTitle: true,
//         ),
//         body: Column(children: [
//           Container(
//             child: Padding(
//               padding: const EdgeInsets.all(45.0),
             
//             ),
//           ),          
//         ]));
//   }
// }

// class Workout_screen extends StatefulWidget {
//   const Workout_screen({Key? key}) : super(key: key);

//   @override
//   State<Workout_screen> createState() => _WorkoutState();
// }

// ignore: camel_case_types
class Workout_screen extends StatelessWidget {
  const Workout_screen({Key? key}) : super(key: key);
@override
 //State<Workout_screen> createState() => _WorkoutState();
  Widget build(BuildContext context) {
    
    return DataTable(
      
      columns: const <DataColumn>[
        DataColumn(
          label: Text(
            'Days',
             style: TextStyle(
              
              color: Color.fromARGB(255, 167, 124, 175),
              fontStyle: FontStyle.italic,
            ),
           
          ),
        ),
        DataColumn(
          label: Text(
            'Calories',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        DataColumn(
          label: Text(
            'Duration',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
      ],
      rows: const <DataRow>[
        DataRow(
          cells: <DataCell>[
            DataCell(Text('da1')),
            DataCell(Text('100')),
            DataCell(Text('5 mins')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('...')),
            DataCell(Text('...')),
            DataCell(Text('...')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('...')),
            DataCell(Text('...')),
            DataCell(Text('...')),
          ],
        ),
      ],
    );
  }
}


