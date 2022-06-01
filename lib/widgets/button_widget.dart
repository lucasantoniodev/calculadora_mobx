import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ButtonWidget extends StatelessWidget {
  final VoidCallback onTap;
  late Color bgColor;
  Color textColor = Colors.white;
  late String label;

  ButtonWidget.red({super.key, required this.label, required this.onTap}) {
    bgColor = Colors.red;
  }

  ButtonWidget.orange({super.key, required this.label, required this.onTap}) {
    bgColor = Colors.deepOrange;
  }

  ButtonWidget.blue({super.key, required this.label, required this.onTap}) {
    bgColor = Colors.blue;
  }

  ButtonWidget.white({super.key, required this.label, required this.onTap}) {
    bgColor = Colors.white;
    textColor = Colors.black87;
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                blurRadius: 10,
                color: bgColor,
              )
            ]),
            child: Center(
              child: Text(
                label,
                style: TextStyle(color: textColor),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
