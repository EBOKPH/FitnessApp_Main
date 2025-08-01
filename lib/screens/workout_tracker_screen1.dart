import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WorkoutTrackerScreen1 extends StatefulWidget {
  const WorkoutTrackerScreen1({super.key});

  @override
  State<WorkoutTrackerScreen1> createState() => _WorkoutTrackerScreen1State();
}

class _WorkoutTrackerScreen1State extends State<WorkoutTrackerScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        actions: [

          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Container(
              height: 36,
              width: 36,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[100],
              ),
              child: Icon(
                Icons.more_horiz_rounded,
              ),
            ),
          ),

        ],

        leading: Padding(
          padding: EdgeInsets.only(left: 16.0, bottom: 10.0, top: 5.0),
          child: Container(
            height: 10.0,
            width: 10.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[100],
            ),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.cancel_outlined,
                ),
            ),
          ),
        ),

        backgroundColor: Colors.transparent,

        elevation: 0,

        automaticallyImplyLeading: false,

      ),

      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [

                Center(
                    child: Image.asset("assets/images/Image8.png"),
                ),

                SizedBox(
                  height: 30.0,
                ),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text("Jumping Jack",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                        ),
                      ),
                    ),
                  ),
                ),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text("Easy | 390 Calories Burn",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey
                        ),
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