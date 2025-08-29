import 'package:kfitkalakal/screens/result_screen.dart';
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
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ResultScreen(),));
                },
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
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Schedule Workout",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                          ],
                        ),

                        Row(
                          children: [

                            Text("5/27, 09:00 AM",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 16,
                            ),
                            SizedBox(
                              width: 20,
                            ),

                          ],
                        ),

                      ],
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  Container(
                    height: 55,
                    decoration: BoxDecoration(
                      color: Color(0xFFF6EAFC),
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
                              Icons.loop_rounded,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Difficulty",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                          ],
                        ),

                        Row(
                          children: [

                            Text("Beginner",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 16,
                            ),
                            SizedBox(
                              width: 20,
                            ),

                          ],
                        ),

                      ],
                    ),
                  ),

                  SizedBox(
                    height: 30,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Text("You'll Need",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                          ),
                        ),
                      ),
                      Text("5 items",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0XFFC7C7C7),
                        ),
                      ),

                    ],
                  ),

                  SizedBox(
                    height: 30,
                  ),

                  SizedBox(
                    height: 160,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [

                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12.0),
                                  child: Image.asset("assets/images/fullbody_workout_screen_image10.png",
                                    width: 140,
                                    height: 140,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text("Barbell",
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),

                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12.0),
                                  child: Image.asset("assets/images/fullbody_workout_screen_image11.png",
                                    width: 140,
                                    height: 140,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text("Skipping Rope",
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),

                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12.0),
                                  child: Image.asset("assets/images/fullbody_workout_screen_image10.png",
                                    width: 140,
                                    height: 140,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text("Barbell",
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),

                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12.0),
                                  child: Image.asset("assets/images/fullbody_workout_screen_image11.png",
                                    width: 140,
                                    height: 140,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text("Skipping Rope",
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),

                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12.0),
                                  child: Image.asset("assets/images/fullbody_workout_screen_image10.png",
                                    width: 140,
                                    height: 140,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text("Barbell",
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),

                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12.0),
                                  child: Image.asset("assets/images/fullbody_workout_screen_image11.png",
                                    width: 140,
                                    height: 140,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text("Barbell",
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),

                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Text("Exercises",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),
                          ),
                        ),
                        Text("3 sets",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0XFFC7C7C7),
                          ),
                        ),

                      ],
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Set 1",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Row(
                          children: [

                            Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                color: Color(0XFFEBF2Fd),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.asset("assets/images/fullbody_workout_screen_image1.png",
                                width: 140,
                                height: 140,
                                fit: BoxFit.cover,
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Text("Warm Up",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black
                                      ),
                                    ),
                                  ),

                                  SizedBox(
                                    height: 3.0,
                                  ),

                                  Text("05:00",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          fontSize: 14,
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

                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.grey,
                              width: 2.0,
                            ),
                          ),
                          padding: EdgeInsets.all(2.0),
                          child: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.grey,
                            size: 15,
                          ),
                        ),

                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Row(
                          children: [

                            Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                color: Color(0XFFEBF2Fd),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.asset("assets/images/fullbody_workout_screen_image2.png",
                                width: 140,
                                height: 140,
                                fit: BoxFit.cover,
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Text("Jumping Jack",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black
                                      ),
                                    ),
                                  ),

                                  SizedBox(
                                    height: 3.0,
                                  ),

                                  Text("12x",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          fontSize: 14,
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

                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.grey,
                              width: 2.0,
                            ),
                          ),
                          padding: EdgeInsets.all(2.0),
                          child: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.grey,
                            size: 15,
                          ),
                        ),

                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Row(
                          children: [

                            Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                color: Color(0XFFEBF2Fd),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.asset("assets/images/fullbody_workout_screen_image3.png",
                                width: 140,
                                height: 140,
                                fit: BoxFit.cover,
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Text("Skipping",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black
                                      ),
                                    ),
                                  ),

                                  SizedBox(
                                    height: 3.0,
                                  ),

                                  Text("15x",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          fontSize: 14,
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

                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.grey,
                              width: 2.0,
                            ),
                          ),
                          padding: EdgeInsets.all(2.0),
                          child: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.grey,
                            size: 15,
                          ),
                        ),

                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Row(
                          children: [

                            Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                color: Color(0XFFEBF2Fd),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.asset("assets/images/fullbody_workout_screen_image4.png",
                                width: 140,
                                height: 140,
                                fit: BoxFit.cover,
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Text("Squats",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black
                                      ),
                                    ),
                                  ),

                                  SizedBox(
                                    height: 3.0,
                                  ),

                                  Text("20x",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          fontSize: 14,
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

                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.grey,
                              width: 2.0,
                            ),
                          ),
                          padding: EdgeInsets.all(2.0),
                          child: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.grey,
                            size: 15,
                          ),
                        ),

                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Row(
                          children: [

                            Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                color: Color(0XFFEBF2Fd),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.asset("assets/images/fullbody_workout_screen_image5.png",
                                width: 140,
                                height: 140,
                                fit: BoxFit.cover,
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Text("Arm Raises",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black
                                      ),
                                    ),
                                  ),

                                  SizedBox(
                                    height: 3.0,
                                  ),

                                  Text("00:53",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          fontSize: 14,
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

                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.grey,
                              width: 2.0,
                            ),
                          ),
                          padding: EdgeInsets.all(2.0),
                          child: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.grey,
                            size: 15,
                          ),
                        ),

                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Row(
                          children: [

                            Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                color: Color(0XFFEBF2Fd),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.asset("assets/images/fullbody_workout_screen_image6.png",
                                width: 140,
                                height: 140,
                                fit: BoxFit.cover,
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Text("Rest and Drink",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black
                                      ),
                                    ),
                                  ),

                                  SizedBox(
                                    height: 3.0,
                                  ),

                                  Text("02:00",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          fontSize: 14,
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

                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.grey,
                              width: 2.0,
                            ),
                          ),
                          padding: EdgeInsets.all(2.0),
                          child: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.grey,
                            size: 15,
                          ),
                        ),

                      ],
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Set 2",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Row(
                          children: [

                            Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                color: Color(0XFFEBF2Fd),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.asset("assets/images/fullbody_workout_screen_image7.png",
                                width: 140,
                                height: 140,
                                fit: BoxFit.cover,
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Text("Incline Push Ups",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black
                                      ),
                                    ),
                                  ),

                                  SizedBox(
                                    height: 3.0,
                                  ),

                                  Text("12x",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          fontSize: 14,
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

                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.grey,
                              width: 2.0,
                            ),
                          ),
                          padding: EdgeInsets.all(2.0),
                          child: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.grey,
                            size: 15,
                          ),
                        ),

                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Row(
                          children: [

                            Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                color: Color(0XFFEBF2Fd),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.asset("assets/images/fullbody_workout_screen_image8.png",
                                width: 140,
                                height: 140,
                                fit: BoxFit.cover,
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Text("Push Ups",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black
                                      ),
                                    ),
                                  ),

                                  SizedBox(
                                    height: 3.0,
                                  ),

                                  Text("12x",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          fontSize: 14,
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

                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.grey,
                              width: 2.0,
                            ),
                          ),
                          padding: EdgeInsets.all(2.0),
                          child: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.grey,
                            size: 15,
                          ),
                        ),

                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Row(
                          children: [

                            Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                color: Color(0XFFEBF2Fd),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.asset("assets/images/fullbody_workout_screen_image9.png",
                                width: 140,
                                height: 140,
                                fit: BoxFit.cover,
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Text("Cobra Stretch",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black
                                      ),
                                    ),
                                  ),

                                  SizedBox(
                                    height: 3.0,
                                  ),

                                  Text("02:00",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          fontSize: 14,
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

                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.grey,
                              width: 2.0,
                            ),
                          ),
                          padding: EdgeInsets.all(2.0),
                          child: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.grey,
                            size: 15,
                          ),
                        ),

                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 20.0, top: 30.0, right: 20.0, bottom: 30.0),
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
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Start Workout",
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
      ),

      backgroundColor: Colors.white,

    );
  }
}