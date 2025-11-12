import 'package:flutter/material.dart';

class AddNewHabit extends StatelessWidget {
  const AddNewHabit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF143048),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 44,
                    width: 44,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white10,
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back, color: Colors.white),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Add a new habit",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
                
              ),
              SizedBox(height: 20),
              DefaultTabController(length: 2, child: Tab(
                child: Column(
                  children: [
                    TabBar(tabs: [
                      Tab(
                        
                      )
                    ])
                  ],
                ),
              ))

            ],
          ),
        ),
      ),
    );
  }
}
