import 'package:flutter/material.dart';

class Skillcontainer extends StatelessWidget {
  final String text1;
  final Color colorx;
  final Color colory;
  const Skillcontainer({
    super.key,
    required this.text1,
    required this.colorx,
    required this.colory,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(colors: [colorx, colory]),
      ),
      child: Text(text1, style: TextStyle(color: Colors.white, fontSize: 20)),
    );
  }
}
