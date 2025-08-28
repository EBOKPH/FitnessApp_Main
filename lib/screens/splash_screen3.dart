import 'package:fitnestx/screens/splash_screen4.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen3 extends StatefulWidget {
  const SplashScreen3({super.key});

  @override
  State<SplashScreen3> createState() => _SplashScreen3State();
}

class _SplashScreen3State extends State<SplashScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),

      backgroundColor: Colors.white,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Image.asset(
                  "assets/images/Image1.png",
                  height: MediaQuery.of(context).size.height * 0.5, // responsive
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),

                SizedBox(height: 20),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    "Eat Well",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 10),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    "Let's start a healthy lifestyle with us. We can determine your diet every day. Healthy eating is fun.",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SplashScreen4(),
            ),
          );
        },
        backgroundColor: Color(0xFF97B3FE).withOpacity(0.7), // slightly higher opacity
        shape: CircleBorder(),
        child: Icon(
          Icons.arrow_forward_ios_outlined,
          color: Colors.white.withOpacity(0.9),
        ),
      ),
    );
  }
}
