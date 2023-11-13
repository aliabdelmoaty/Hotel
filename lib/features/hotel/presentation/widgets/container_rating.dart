import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerRating extends StatelessWidget {
  const ContainerRating({
    super.key,
    required this.color,
    required this.text,
  });
  final Color color;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(Radius.circular(10.r))),
        child: TextButton(
            onPressed: () {},
            child: Text(
              text,
              style: const TextStyle(color: Colors.white),
            )));
  }
}
