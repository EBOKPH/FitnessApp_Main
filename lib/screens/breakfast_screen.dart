import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BreakfastScreen extends StatefulWidget {
  const BreakfastScreen({super.key});

  @override
  State<BreakfastScreen> createState() => _BreakfastScreenState();
}

class _BreakfastScreenState extends State<BreakfastScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: Text("Breakfast",
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

        backgroundColor: Colors.white,

      ),

      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [

                Padding(
                  padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                  child: Material(
                    elevation: 3,
                    borderRadius: BorderRadius.circular(10),
                    shadowColor: Colors.grey.withOpacity(0.3),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Search...',
                        prefixIcon: Icon(Icons.search, color: Colors.grey),
                        filled: true,
                        fillColor: Color(0XFFF8F8F8),
                        contentPadding: EdgeInsets.symmetric(horizontal: 20),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 30,
                ),

                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Breakfast",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 200,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0, bottom: 20.0),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [

                        Container(
                          width: 125,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0XFFE9F0FF),
                            borderRadius: BorderRadius.circular(26.0),
                          ),
                          child: Column(
                            children: [

                              SizedBox(
                                height: 40,
                              ),

                              Icon(
                                Icons.restaurant_menu,
                                size: 48,
                              ),

                              SizedBox(
                                height: 20,
                              ),

                              Text("Salad",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),

                        SizedBox(
                          width: 20,
                        ),

                        Container(
                          width: 125,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0XFFF9EBF9),
                            borderRadius: BorderRadius.circular(26.0),
                          ),
                          child: Column(
                            children: [

                              SizedBox(
                                height: 40,
                              ),

                              Icon(
                                Icons.restaurant_menu,
                                size: 48,
                              ),

                              SizedBox(
                                height: 20,
                              ),

                              Text("Cake",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),

                        SizedBox(
                          width: 20,
                        ),

                        Container(
                          width: 125,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0XFFE9F0FF),
                            borderRadius: BorderRadius.circular(26.0),
                          ),
                          child: Column(
                            children: [

                              SizedBox(
                                height: 40,
                              ),

                              Icon(
                                Icons.restaurant_menu,
                                size: 48,
                              ),

                              SizedBox(
                                height: 20,
                              ),

                              Text("Pie",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),

                        SizedBox(
                          width: 20,
                        ),

                        Container(
                          width: 125,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0XFFF9EBF9),
                            borderRadius: BorderRadius.circular(26.0),
                          ),
                          child: Column(
                            children: [

                              SizedBox(
                                height: 40,
                              ),

                              Icon(
                                Icons.restaurant_menu,
                                size: 48,
                              ),

                              SizedBox(
                                height: 20,
                              ),

                              Text("Smoothie",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
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

              ],
            ),
          ),
      ),

      backgroundColor: Colors.white,

    );
  }
}