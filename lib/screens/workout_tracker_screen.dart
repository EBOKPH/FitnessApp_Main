import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WorkoutTrackerScreen extends StatefulWidget {
  const WorkoutTrackerScreen({super.key});

  @override
  State<WorkoutTrackerScreen> createState() => _WorkoutTrackerScreenState();
}

class _WorkoutTrackerScreenState extends State<WorkoutTrackerScreen> {

  List<Map<String, double>> chartData = [
    {'x': 0, 'y': 75},
    {'x': 1, 'y': 78},
    {'x': 2, 'y': 72},
    {'x': 3, 'y': 80},
    {'x': 4, 'y': 74},
    {'x': 5, 'y': 79},
    {'x': 6, 'y': 77},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: Text("Workout Tracker",
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black
            ),
          ),
        ),
        leading: Padding(
          padding: EdgeInsets.fromLTRB(16.0, 0.0, 0.0, 10.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(12),
            ),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.black,),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(12),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_horiz_rounded, color: Colors.black,),
              ),
            ),
          ),
        ],
      ),

      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [

                Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: SizedBox(
                    height: 300,
                    child: LineChart(
                      LineChartData(
                        titlesData: FlTitlesData(
                          leftTitles: AxisTitles(
                            sideTitles: SideTitles(showTitles: true),
                          ),
                          bottomTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: true,
                              interval: 1,
                              getTitlesWidget: (value, meta) => Text(value.toInt().toString()),
                            ),
                          ),
                        ),
                        borderData: FlBorderData(
                          show: true,
                          border: Border.all(color: Colors.grey, width: 1),
                        ),
                        lineBarsData: [
                          LineChartBarData(
                            spots: [
                              FlSpot(0, 3),
                              FlSpot(1, 1),
                              FlSpot(2, 4),
                              FlSpot(3, 2),
                              FlSpot(4, 5),
                            ],
                            isCurved: true,
                            color: Colors.blue,
                            barWidth: 3,
                            dotData: FlDotData(show: true),
                            belowBarData: BarAreaData(
                              show: true,
                              color: Colors.blue.withOpacity(0.2),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
                  child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                      color: Color(0xFFE9F0FF),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text("Daily Workout Schedule",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.blue[200]),
                            ),
                            onPressed: () {},
                            child: Text("Check",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Padding(
                        padding: EdgeInsets.only(left: 26.0),
                        child: Text("Upcoming Workout",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 26.0),
                        child: Text("See more",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0XFFC7C7C7),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
                  child: Material(
                    elevation: 1,
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Row(
                            children: [

                              Container(
                                width: 65,
                                height: 65,
                                decoration: BoxDecoration(
                                  color: Color(0XFFE9F0FF),
                                  borderRadius: BorderRadius.circular(44.0),
                                ),
                                child: Icon(
                                    Icons.person,
                                    size: 46.0
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Text("Fullbody Workout",
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black
                                        ),
                                      ),
                                    ),
                                    Text("Today, 03:00pm",
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.grey
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              ),

                            ],
                          ),

                          Switch(
                              value: true,
                              onChanged: (value) {},
                          ),

                        ],
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
      ),

    );
  }
}