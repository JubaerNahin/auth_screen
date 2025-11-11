import 'package:auth_screen_design/features/auth/set_new_password_page/widgets/popup_card..dart';
import 'package:auth_screen_design/features/home/dashboard/widget/daily_task.dart';
import 'package:auth_screen_design/features/home/dashboard/widget/home_screen_popup.dart';
import 'package:auth_screen_design/gen/assets.gen.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/flutter_percent_indicator.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: [Color(0xFF143048), Color(0xFFF2CD63)],
            begin: Alignment.topCenter,
            end: Alignment.bottomRight,
          ),
        ),
        child: FloatingActionButton(
          backgroundColor: Colors.transparent, // important
          elevation: 0, // optional
          onPressed: () {
            HomeScreenPopup.show(context);
          },
          shape: CircleBorder(), // ensures circle
          child: Icon(Icons.add, color: Colors.white, size: 32),
        ),
      ),

      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
              child: Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.blueGrey),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Container(
                    height: 130,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFFFAFAFB),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Today\'s Goals Overview',
                            style: TextStyle(
                              color: Color(0xFF071431),
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: 50,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xFF2FA75F),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    'Health',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),

                              SizedBox(
                                height: 50,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xFF0078FF),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    'Career',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              SizedBox(
                                height: 50,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xFFFF9A00),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    'Study',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 110,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFF143048),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: Text(
                              "Potential Points",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          LinearPercentIndicator(
                            lineHeight: 10,
                            percent: 0.2,
                            barRadius: const Radius.circular(16),
                            progressColor: Color(0xFFF45170),
                            backgroundColor: Color(0xFFF5F6F7),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: Row(
                              children: [
                                Icon(Icons.star, color: Colors.white),
                                SizedBox(width: 10),
                                Text(
                                  '180/10',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 10),

                  Container(
                    height: 130,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black12),
                      color: Color(0xFFFAFAFB),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Text(
                            "✨ AI Coach Nudge",
                            style: TextStyle(
                              color: Color(0xFF5B6477),
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Complete 3 Q2 tasks before noon for a 50+ Daily Boost!',
                            style: TextStyle(
                              color: Color(0xFF071431),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  //Daily Task & Habit List
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Daily Task & Habit List',
                      style: TextStyle(
                        color: Color(0xFF071431),
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  DailyTask(
                    title: 'Run 30 minutes',
                    description: 'Eisenhower: Q2 Important, Not Urgent',
                    points: '+20 pts',
                    time: '7:00 AM',
                    field: 'Health',
                    color: Color(0xFF2FA75F),
                  ),
                  SizedBox(height: 10),
                  DailyTask(
                    title: 'Finish Project Proposal',
                    description: 'Eisenhower: Q2 Important, Not Urgent',
                    points: '+10 pts',
                    time: '10:00 AM',
                    field: "Career",
                    color: Color(0xFF0078FF),
                  ),
                  SizedBox(height: 10),
                  DailyTask(
                    title: 'Read 10 Pages',
                    description: 'Eisenhower: Habit',
                    points: '+10 pts',
                    time: '9:00 PM',
                    field: 'Study',
                    color: Color(0xFFFF9A00),
                  ),

                  //Progress & Motivation Panel
                  SizedBox(height: 20),
                  Container(
                    //   padding: EdgeInsets.all(16),
                    height: 240,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.black12),
                      color: Color(0xFFFAFAFB),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 16, left: 16),
                          child: Text(
                            "Weekly Performance",
                            style: TextStyle(
                              color: Color(0xFF404A60),
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),

                        // SizedBox(height: 10),
                        SizedBox(
                          height: 150,
                          width: 170,
                          child: BarChart(
                            BarChartData(
                              maxY: 190,
                              barGroups: [
                                BarChartGroupData(
                                  x: 0,
                                  barRods: [
                                    BarChartRodData(
                                      toY: 170,
                                      width: 60,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(8),
                                        topRight: Radius.circular(8),
                                      ),
                                      color: Color(0xFF143048),
                                    ),
                                  ],
                                ),
                                BarChartGroupData(
                                  x: 1,
                                  barRods: [
                                    BarChartRodData(
                                      toY: 120,
                                      width: 60,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(8),
                                        topRight: Radius.circular(8),
                                      ),
                                      color: Color(0xFF627484),
                                    ),
                                  ],
                                ),
                              ],
                              gridData: FlGridData(show: false),
                              borderData: FlBorderData(show: false),
                              titlesData: FlTitlesData(
                                topTitles: AxisTitles(
                                  sideTitles: SideTitles(showTitles: false),
                                ),
                                rightTitles: AxisTitles(
                                  sideTitles: SideTitles(showTitles: false),
                                ),
                                leftTitles: AxisTitles(
                                  sideTitles: SideTitles(showTitles: false),
                                ),

                                // Bottom titles
                                bottomTitles: AxisTitles(
                                  sideTitles: SideTitles(
                                    showTitles: true,

                                    // reservedSize: 20,
                                    getTitlesWidget: (value, meta) {
                                      switch (value.toInt()) {
                                        case 0:
                                          return Text(
                                            "Potential",
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Color(0xFF5B6477),
                                              fontWeight: FontWeight.w400,
                                            ),
                                          );
                                        case 1:
                                          return Text(
                                            "Actual",
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Color(0xFF5B6477),
                                              fontWeight: FontWeight.w400,
                                            ),
                                          );
                                      }
                                      return SizedBox();
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        //   SizedBox(height: 16),
                        Padding(
                          padding: const EdgeInsets.only(left: 18, top: 10.0),
                          child: Text(
                            "You've earned 720 pts this week",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF404A60),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(16),
                    height: 225,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(width: 0),
                      color: Color(0xFFFAFAFB),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Goal Completion Summary',
                          style: TextStyle(
                            color: Color(0xFF404A60),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Assets.images.mountain.image(
                              height: 40,
                              width: 40,
                              color: Color(0xFF66C79A),
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Run 10k Goal",
                                  style: TextStyle(
                                    color: Color(0xFF5B6477),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  '65% up the mountain',
                                  style: TextStyle(
                                    color: Color(0xFF5B6477),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Assets.images.mountain.image(
                              height: 40,
                              width: 40,
                              color: Color(0xFF66C79A),
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Read 5 Books This Month",
                                  style: TextStyle(
                                    color: Color(0xFF5B6477),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  '40% completed',
                                  style: TextStyle(
                                    color: Color(0xFF5B6477),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 8),

                        Row(
                          children: [
                            Assets.images.mountain.image(
                              height: 40,
                              width: 40,
                              color: Color(0xFF66C79A),
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Finish Portfolio Update",
                                  style: TextStyle(
                                    color: Color(0xFF5B6477),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  '90% Completed',
                                  style: TextStyle(
                                    color: Color(0xFF5B6477),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(16),
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(width: 0),
                      color: Color(0xFFFAFAFB),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Habit Streaks',
                          style: TextStyle(
                            color: Color(0xFF404A60),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(Icons.water_drop, color: Color(0xFF84DBFF)),
                            SizedBox(width: 10),
                            Text("Drink Water"),
                            Spacer(),
                            Text('3days'),
                            SizedBox(width: 5),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Icon(Icons.water_drop, color: Color(0xFF84DBFF)),
                            SizedBox(width: 10),
                            Text("Drink Water"),
                            Spacer(),
                            Text('3days'),
                            SizedBox(width: 5),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Icon(Icons.person, color: Color(0xFF84DBFF)),
                            SizedBox(width: 10),
                            Text("Drink Water"),
                            Spacer(),
                            Text('3days'),
                            SizedBox(width: 5),
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 20),
                  Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(width: 0),
                      color: Color(0xFFFAFAFB),
                    ),
                  ),

                  //Quick Stats Snapshot
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
