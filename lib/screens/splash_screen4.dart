import 'package:fitnestx/screens/splash_screen5.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen4 extends StatefulWidget {
  const SplashScreen4({super.key});

  @override
  State<SplashScreen4> createState() => _SplashScreen4State();
}

class _SplashScreen4State extends State<SplashScreen4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0, // Optional: removes the shadow for a cleaner look
      ),

      backgroundColor: Colors.white,

      body: SafeArea(
        child: SingleChildScrollView( // Makes body scrollable if content is too big
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20.0), // Add space for FAB
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Image.asset(
                  "assets/images/Image2.png",
                  height: MediaQuery.of(context).size.height * 0.5, // responsive
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),

                SizedBox(height: 20),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    "Improve Sleep Quality",
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
                    "Improve the quality of sleep with us. Good quality sleep can bring a good mood in the morning.",
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
              builder: (context) => SplashScreen5(),
            ),
          );
        },
        backgroundColor: Color(0xFF97B3FE).withOpacity(0.7), // lower opacity
        shape: CircleBorder(),
        child: Icon(
          Icons.arrow_forward_ios_outlined,
          color: Colors.white.withOpacity(0.9), // slightly transparent icon
        ),
      ),
    );
  }
}
