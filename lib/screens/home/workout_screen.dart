import 'package:flutter/material.dart';

class Workout_Screen extends StatefulWidget {
  const Workout_Screen({Key? key}) : super(key: key);

  @override
  State<Workout_Screen> createState() => _Workout_ScreenState();
}

class _Workout_ScreenState extends State<Workout_Screen> {
  var tableDataOne = {
    "Days": [
      "Monday",
      "Tuesday",
      "Wednesday",
      "Thursday",
      "Friday",
      "Saturday",
      "Sunday",
    ],
    "Calories": [
      100,
      200,
      300,
      400,
      500,
      600,
      700,
    ],
    "Time Duration": [
      10,
      20,
      30,
      40,
      50,
      60,
      70,
    ],
  };

  var tableDataTwo = {
    "Days": [
      "Monday",
      "Tuesday",
      "Wednesday",
      "Thursday",
      "Friday",
      "Saturday",
      "Sunday",
    ],
    "Calories": [
      100,
      200,
      300,
      400,
      500,
      600,
      700,
    ],
    "Time Duration": [
      10,
      20,
      30,
      40,
      50,
      60,
      70,
    ],
  };

  int _selectedIndex = 0;
  TabController? controller;

  @override
  //State<Workout_screen> createState() => _WorkoutState();
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: _selectedIndex,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 61, 25, 67),
          title: Text('Workout Progress'),
          actions: [
            TextButton.icon(
              label: Text('Reset'),
              icon: Icon(Icons.refresh, color: Colors.white),
              onPressed: () {},
              style: TextButton.styleFrom(
                primary: Colors.white,
              ),
            ),
          ],
          elevation: 0,
          bottom: TabBar(
            padding: EdgeInsets.all(10),
            isScrollable: false,
            automaticIndicatorColorAdjustment: true,
            physics: BouncingScrollPhysics(),
            indicatorSize: TabBarIndicatorSize.tab,
            labelStyle: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            //splashBorderRadius: BorderRadius.circular(50),
            unselectedLabelStyle: TextStyle(
              fontSize: 12,
              color: Colors.white,
            ),
            mouseCursor: SystemMouseCursors.click,
            overlayColor: MaterialStateProperty.all(Colors.white),
            controller: controller,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white,
            ),
            indicatorColor: Color.fromARGB(255, 22, 142, 172),
            indicatorWeight: 5.0,
            unselectedLabelColor: Colors.white,
            labelColor: Color.fromARGB(255, 22, 142, 172),
            tabs: [
              Tab(text: "Full Body Workout"),
              Tab(text: "Legs Workout"),
            ],
            onTap: (value) {
              setState(() {
                _selectedIndex = value;
              });
            },
          ),
        ),
        body: TabBarView(
          controller: controller,
          children: [
            // for tableDataOne
            Container(
              padding: EdgeInsets.all(10),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // Text for the table title
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Full Body Workout",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Table(
                        border: TableBorder.all(),
                        defaultVerticalAlignment:
                            TableCellVerticalAlignment.middle,
                        defaultColumnWidth: FixedColumnWidth(120.0),
                        columnWidths: {
                          0: FlexColumnWidth(1),
                          1: FlexColumnWidth(1),
                          2: FlexColumnWidth(1),
                        },
                        children: [
                          TableRow(children: [
                            Text(
                              "Days",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text("Calories",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20)),
                            FittedBox(
                              child: Text("Time Duration",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                            ),
                          ]),

                          // This is where we will loop through the tableData
                          // and create a TableRow for each row of data
                          for (var i = 0; i < tableDataOne["Days"]!.length; i++)
                            TableRow(
                              children: [
                                Text(tableDataOne["Days"]![i].toString(),
                                    style: TextStyle(fontSize: 17)),
                                Text(tableDataOne["Calories"]![i].toString(),
                                    style: TextStyle(fontSize: 17)),
                                Text(
                                    tableDataOne["Time Duration"]![i]
                                        .toString(),
                                    style: TextStyle(fontSize: 17)),
                              ],
                            ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                              flex: 1,
                              child: Text("Total Progress:",
                                  style: TextStyle(fontSize: 15))),
                          Expanded(
                            flex: 2,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Text("2800 calories"),
                                Text("280 mints"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // for tableDataTwo
            Container(
              padding: EdgeInsets.all(10),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // Text for the table title
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Legs Workout",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Table(
                        border: TableBorder.all(),
                        defaultVerticalAlignment:
                            TableCellVerticalAlignment.middle,
                        defaultColumnWidth: FixedColumnWidth(120.0),
                        columnWidths: {
                          0: FlexColumnWidth(1),
                          1: FlexColumnWidth(1),
                          2: FlexColumnWidth(1),
                        },
                        children: [
                          TableRow(children: [
                            Text(
                              "Days",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text("Calories",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20)),
                            FittedBox(
                              child: Text("Time Duration",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                            ),
                          ]),

                          // This is where we will loop through the tableData
                          // and create a TableRow for each row of data
                          for (var i = 0; i < tableDataTwo["Days"]!.length; i++)
                            TableRow(
                              children: [
                                Text(tableDataTwo["Days"]![i].toString(),
                                    style: TextStyle(fontSize: 17)),
                                Text(tableDataTwo["Calories"]![i].toString(),
                                    style: TextStyle(fontSize: 17)),
                                Text(
                                    tableDataTwo["Time Duration"]![i]
                                        .toString(),
                                    style: TextStyle(fontSize: 17)),
                              ],
                            ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                              flex: 1,
                              child: Text("Total Progress:",
                                  style: TextStyle(fontSize: 15))),
                          Expanded(
                            flex: 2,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Text("2800 calories"),
                                Text("280 days"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}