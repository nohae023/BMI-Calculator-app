import 'package:flutter/material.dart';

class ReusableContainer extends StatelessWidget {
  const ReusableContainer(
      {super.key, required this.myChild, required this.myColor});
  final Widget myChild;
  final Color myColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: myColor,
      ),
      child: myChild,
    );
  }
}


// Color(0xff1c1f32)