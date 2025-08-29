import 'package:kfitkalakal/screens/goal_screen/goal_screen2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GoalScreen1 extends StatefulWidget {
  const GoalScreen1({super.key});

  @override
  State<GoalScreen1> createState() => _GoalScreen1State();
}

class _GoalScreen1State extends State<GoalScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: 20),

              Text(
                "What is your goal?",
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),

              Text(
                "It will help us to choose a best program for you",
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
              ),

              SizedBox(height: 30),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  width: double.infinity,
                  height: 550,
                  decoration: BoxDecoration(
                    color: Color(0XFF93AAFD),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Column(
                    children: [

                      SizedBox(
                        height: 10.0,
                      ),
                      Image.asset(
                          "assets/images/Image5.png",
                          height: 350,
                          fit: BoxFit.cover,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),

                      Text(
                        "Lean & Tone",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),

                      Divider(
                        color: Colors.white,
                        thickness: 1.0,
                        indent: 135.0,
                        endIndent: 135.0,
                      ),

                      SizedBox(
                        height: 10.0,
                      ),

                      Text(
                        "I'm skinny fat. Look thin but have",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),

                      Text(
                        "no shape. I want to add learn",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),

                      Text(
                        "muscle in the right way.",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),

              SizedBox(height: 75),

              Padding(
                padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 30.0),
                child: SizedBox(
                  height: 55,
                  width: double.infinity,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFF97B3FE), Color(0xFF9AC2FF)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => GoalScreen2(),
                          ),
                        );
                      },
                      child: Text(
                        "Confirm",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
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