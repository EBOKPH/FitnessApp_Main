import 'package:fitnestx/screens/splash_screen6.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen5 extends StatefulWidget {
  const SplashScreen5({super.key});

  @override
  State<SplashScreen5> createState() => _SplashScreen5State();
}

class _SplashScreen5State extends State<SplashScreen5> {
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
                  "assets/images/Image3.png",
                  height: MediaQuery.of(context).size.height * 0.5, // responsive
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),

                SizedBox(height: 20),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    "Get Burn",
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
                    "Let's keep burning. To achieve your goals, it hurts only temporarily. If you give up now, you will be in pain forever.",
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
              builder: (context) => SplashScreen6(),
            ),
          );
        },
        backgroundColor: Color(0xFF97B3FE).withOpacity(0.7), // semi-transparent
        shape: CircleBorder(),
        child: Icon(
          Icons.arrow_forward_ios_outlined,
          color: Colors.white.withOpacity(0.9),
        ),
      ),
    );
  }
}
