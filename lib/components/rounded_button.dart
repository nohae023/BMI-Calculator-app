import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({super.key, required this.icon, required this.OnPressed});
  final IconData icon;
  final void Function() OnPressed;
  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: FilledButton.styleFrom(
        backgroundColor: Color(0xff494a5c),
        shape: CircleBorder(),
        padding: EdgeInsets.all(15),
      ),
      onPressed: OnPressed,
      child: FaIcon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
