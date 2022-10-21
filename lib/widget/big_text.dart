import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/static/colors.dart';

class BigText extends StatelessWidget {
  double size;
  final String text;
  final Color color;

  BigText(
      {Key? key,
      this.size = 20,
      required this.text,
      this.color = Colors.yellow,
      required FontWeight fontWeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(color: color, fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}
