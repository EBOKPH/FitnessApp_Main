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

                  SizedBox(
                    height: 20,
                  ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Fullbody Workout",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 5,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Text("11 Exercises | 32 mins | 320 Calories Burn",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey
                          ),
                        ),
                      ),

                      Icon(
                        Icons.heart_broken,
                        color: Colors.red,
                      ),

                    ],
                  ),

                  SizedBox(
                    height: 25,
                  ),

                  Container(
                    height: 55,
                    decoration: BoxDecoration(
                      color: Color(0xFFE9F0FF),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Row(
                          children: [

                            SizedBox(
                              width: 20,
                            ),

                            Icon(
                              Icons.calendar_month_rounded,
                              color: Colors.grey,
                            ),

                            Text("Today's Target",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                          ],
                        ),

                        Row(
                          children: [

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

                      ],
                    ),
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