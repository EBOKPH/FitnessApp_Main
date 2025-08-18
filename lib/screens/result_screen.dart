import 'package:flutter/material.dart';

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
          title: const Text("Custom Tabs"),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Column(
          children: [
            const SizedBox(height: 20),
            // Custom TabBar container
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 50),
              decoration: BoxDecoration(
                color: Colors.grey.shade200, // background of whole tab bar
                borderRadius: BorderRadius.circular(30),
              ),
              child: TabBar(
                indicator: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF6A85B6), Color(0xFFBAC8E0)], // blue gradient
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                indicatorSize: TabBarIndicatorSize.tab, // 👈 FIX: full pill shape
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
            // Tab Views
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
    );
  }
}