import 'package:flutter/material.dart';
import 'package:flutter_application_5/utlis/constants.dart';

class GenderColumn extends StatelessWidget {
  const GenderColumn({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 65,
        ),
        // FaIcon(
        //   icon,
        //   color: Colors.white,
        //   size: 65,
        // ),
        SizedBox(
          height: 20,
        ),
        Text(
          title,
          style: titleStyle,
        ),
      ],
    );
  }
}
