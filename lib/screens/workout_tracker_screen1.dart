import 'package:flutter/material.dart';

class WorkoutTrackerScreen1 extends StatefulWidget {
  const WorkoutTrackerScreen1({super.key});

  @override
  State<WorkoutTrackerScreen1> createState() => _WorkoutTrackerScreen1State();
}

class _WorkoutTrackerScreen1State extends State<WorkoutTrackerScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(),

      body: Center(
        child: Text("workout_tracker_screen1"),
      ),


    );
  }
}