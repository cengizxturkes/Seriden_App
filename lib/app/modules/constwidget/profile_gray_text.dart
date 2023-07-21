import 'package:flutter/material.dart';

class ProfileGrayText extends StatelessWidget {
  final String title;
  const ProfileGrayText({
    Key? key, required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          fontSize: 12,
          fontFamily: "Gilroy-Regular",
          color: Color(0xff343434)),
    );
  }
}
