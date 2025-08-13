import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FullbodyWorkoutScreen extends StatefulWidget {
  const FullbodyWorkoutScreen({super.key});

  @override
  State<FullbodyWorkoutScreen> createState() => _FullbodyWorkoutScreenState();
}

class _FullbodyWorkoutScreenState extends State<FullbodyWorkoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        /*title: Text("Workout Tracker",
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black
            ),
          ),
        ),*/
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

        backgroundColor: Colors.white,

      ),

      body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
              child: Column(
                children: [

                  SizedBox(
                    width: double.infinity,
                    height: 300,
                    child: Image.asset("assets/images/FullBody_Workout_Image1.png"),
                  ),

                ],
              ),
            ),
          ),
      ),

      backgroundColor: Colors.white,

    );
  }
}