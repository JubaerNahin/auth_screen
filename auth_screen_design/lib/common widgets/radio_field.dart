import 'package:flutter/material.dart';

class RadioField extends StatelessWidget {
  final String text;
  final String subtitle;
  final bool onSelect;
  final VoidCallback onTap;

  const RadioField({
    super.key,
    required this.text,
    required this.subtitle,
    required this.onSelect,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 70,
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          border: Border.all(
            color: onSelect
                ? const Color.fromARGB(255, 5, 30, 51)
                : Colors.grey.shade300,
            width: onSelect ? 2 : 1,
          ),
        ),
        child: onSelect
            ? Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.radio_button_checked),
                  SizedBox(width: 10),
                  Text(
                    text,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: onSelect
                          ? const Color.fromARGB(255, 5, 30, 51)
                          : Colors.black,
                    ),
                  ),
                  Expanded(child: SizedBox()),
                  Text(
                    subtitle,
                    style: TextStyle(
                      color: onSelect
                          ? const Color.fromARGB(255, 5, 30, 51)
                          : Colors.grey,
                    ),
                  ),
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    text,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: onSelect
                          ? const Color.fromARGB(255, 5, 30, 51)
                          : Colors.black,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(
                      color: onSelect
                          ? const Color.fromARGB(255, 5, 30, 51)
                          : Colors.grey,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
