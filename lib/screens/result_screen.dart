import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(

      length: 2,
      child: Scaffold(

        backgroundColor: Colors.white,

        appBar: AppBar(
          centerTitle: true,
          title: Text("Result",
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
                  icon: Icon(Icons.share, color: Colors.black,),
                ),
              ),
            ),
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
          elevation: 0,

        ),

        body: SafeArea(
          child: Column(
            children: [

              const SizedBox(height: 20),

              Container(
                margin: const EdgeInsets.symmetric(horizontal: 50),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TabBar(

                  indicator: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xFF98C0FE), Color(0xFF94A8FF)],
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.grey,
                  dividerColor: Colors.transparent,
                  tabs: const [

                    Tab(text: "Photo"),
                    Tab(text: "Statistic"),

                  ],
                ),
              ),

              const SizedBox(height: 20),

              Expanded(
                child: TabBarView(
                  children: [

                    Center(child: Text("This is wd Photo Tab")),
                    Center(child: Text("This is Statistic Tab")),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}