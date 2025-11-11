import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DailyTask extends StatelessWidget {
  final String title;
  final String description;
  final String points;
  final String time;
  final String field;
  final Color color;

  const DailyTask({
    super.key,
    required this.title,
    required this.description,
    required this.points,
    required this.time,
    required this.field,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,

      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xFFFAFAFB),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Color(0xFF071431), width: 0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Color(0xFF071431),
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
              Spacer(),
              Text(
                points,
                style: TextStyle(color: Color(0xFF071431), fontSize: 16),
              ),

              SizedBox(width: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                  backgroundColor: color,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  field,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ],
          ),

          SizedBox(height: 10),
          Text(
            description,
            style: TextStyle(
              color: Color(0xFF404A60),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Text(
                '⏰ Sceduled Timne: $time',
                style: TextStyle(
                  color: Color(0xFF404A60),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Spacer(),
              InkWell(
                onTap: () {},
                child: Text(
                  "Not Started",
                  style: TextStyle(color: Color(0xFF55826D), fontSize: 16),
                ),
              ),
            ],
          ),
          SizedBox(height: 16),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 110,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,

                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    backgroundColor: Color(0xFFEBECEF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Start',
                    style: TextStyle(
                      color: Color(0xFF071431),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 110,

                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    backgroundColor: Colors.white,

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                      side: BorderSide(color: Colors.black12, width: 0),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Rescedule',
                    style: TextStyle(
                      color: Color(0xFF071431),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 110,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,

                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Edit',
                    style: TextStyle(
                      color: Color(0xFF071431),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
