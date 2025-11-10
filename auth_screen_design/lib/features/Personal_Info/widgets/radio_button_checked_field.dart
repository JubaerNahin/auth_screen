import 'package:flutter/material.dart';

class RadioButtonCheckedField extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool isSelected;
  final Icon icon;
  final String points;
  final String time;

  final VoidCallback onTap;

  const RadioButtonCheckedField({
    super.key,
    required this.title,
    required this.subtitle,
    required this.isSelected,
    required this.icon,
    required this.points,
    required this.onTap,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 80,
        padding: const EdgeInsets.all(8),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          border: Border.all(
            color: isSelected
                ? const Color.fromARGB(255, 5, 30, 51)
                : Colors.grey.shade300,
            width: isSelected ? 2 : 1,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Transform.scale(
              scale: 1.5,
              child: Checkbox(
                value: isSelected,

                onChanged: (bool? value) => onTap(),
                activeColor: const Color.fromARGB(255, 5, 30, 51),
                checkColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                Text(subtitle, style: const TextStyle(fontSize: 14)),
              ],
            ),
            const Expanded(child: SizedBox()),

            Padding(
              padding: const EdgeInsets.only(bottom: 4.0),
              child: Text(points, style: const TextStyle(fontSize: 14)),
            ),
            const Expanded(child: SizedBox()),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icon,
                Text(time, style: const TextStyle(fontSize: 14)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
