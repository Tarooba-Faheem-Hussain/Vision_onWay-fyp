// ignore_for_file: deprecated_member_use, unnecessary_statements

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BmiCalculator(),
    );
  }
}

class BmiCalculator extends StatefulWidget {
  BmiCalculator({Key? key}) : super(key: key);

  @override
  _BmiCalculatorState createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
//declaring variable for radio buttons
  int currentindex = 0;
  String result = "";
  double height = 0;
  double weight = 0;
  // declare the inputcontrollor to get the input value
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  TextEditingController postController = TextEditingController();

  //final postController = TextEditingController();
  bool loading = false;
  // ignore: non_constant_identifier_names
  final DatabaseReference = FirebaseDatabase.instance.ref('BMI');
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        // We create a simple app bar
        appBar: AppBar(
          title: Text(
            " BMI  CALCULATOR",
            style: TextStyle(color: Color.fromARGB(255, 108, 64, 228)),
          ),
          elevation: 3.0,
          backgroundColor: Colors.purple[100],
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            color: Colors.deepPurpleAccent,
            icon: Icon(Icons.arrow_back),
          ),
          // actions: [
          //   IconButton(
          //     onPressed: () {},
          //     icon: Icon(
          //       Icons.settings,
          //       color: Color.fromARGB(255, 146, 64, 64),
          //     ),
          //   ),
          // ],
        ),
//Now creating the body of aapp
//wrap body in SingleChildScrollView
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    radioButton("Man", Color.fromARGB(255, 100, 134, 161), 0),
                    radioButton("Woman", Colors.pink, 1),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                //now input form
                Text(
                  "Your Height in cm:",
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                TextFormField(
                  // controller: postController,
                  keyboardType: TextInputType.number,
                  controller: heightController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: "You Height in cm",
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  //   controller: postController,
                ),

                SizedBox(
                  height: 20.0,
                ),

                // same goes to weigh
                //copy paste code

                Text(
                  "Your Weight in kg:",
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  controller: weightController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: "You Weight in kg",
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                //calculate btn
                Container(
                  width: double.infinity,
                  height: 50.0,
                  child: TextButton(
                    onPressed: () {
                      DatabaseReference.child(DateTime.now().millisecondsSinceEpoch.toString()).set({
                         //'bmi is ':postController.value.toString(),
                        'height': heightController.value.text,
                        'weight': weightController.value.text,
                       
                        
                      }).then((value) {});

                      //style:
                      TextButton.styleFrom(
                        backgroundColor: Colors.deepPurpleAccent,
                      );
                      setState(() {
                        height = double.parse(heightController.value.text);
                        weight = double.parse(heightController.value.text);
                        
                      });

                      calculteBmi(height, weight);
                      //
                    },
                    // color: Colors.deepPurpleAccent,
                    child: Text(
                      "Calculate",
                      style: TextStyle(
                        color: Color.fromARGB(255, 12, 11, 11),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: double.infinity,
                  child: Text(
                    "Your BMI is:",
                    
                    
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Container(
                  width: double.infinity,
                  child: Text(
                    "$result",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void calculteBmi(double height, double weight) {
    double finalresult = weight / (height * height / 4800);
    String bmi = finalresult.toStringAsFixed(2);
    setState(() {
      result = bmi;
    });
  }

//declare a function to change the index value on button press
  void changeIndex(int index) {
    setState(() {
      currentindex = index;
    });
  }

//Now i'll create a new custom widget
  Widget radioButton(String value, Color color, int index) {
    return Expanded(
      child: Container(
        // some margin to the container
        margin: EdgeInsets.symmetric(horizontal: 12.0),
        //add some heith to btn
        height: 80.0,
        child: TextButton(
          onPressed: () {
            
            //color:
            currentindex == index ? color : Colors.grey[200];
            //shape:
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            );

            //
            changeIndex(index);
          },
          //some modification to the button text
          child: Text(
            value,
            style: TextStyle(
              color: currentindex == index ? Colors.white : color,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}