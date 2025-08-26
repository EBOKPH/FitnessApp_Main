import 'package:flutter/material.dart';

class HoneyPancakeScreen extends StatefulWidget {
  const HoneyPancakeScreen({super.key});

  @override
  State<HoneyPancakeScreen> createState() => _HoneyPancakeScreenState();
}

class _HoneyPancakeScreenState extends State<HoneyPancakeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        backgroundColor: Colors.white,

      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [

              Text("HoneyPancakeScreen!!!!!"),

            ],
          ),
        ),
      ),

      backgroundColor: Colors.white,

    );
  }
}