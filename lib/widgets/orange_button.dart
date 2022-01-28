import 'package:flutter/material.dart';


class OrangeButton extends StatelessWidget {
  
  final String text;

  const OrangeButton({
    Key? key, 
    required this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 45,
      alignment: Alignment.center,
      decoration: getBoxDecoration(),
      child: Text(text, style: const TextStyle(color: Colors.white)),
    );
  }


  BoxDecoration getBoxDecoration() {
    return BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: const Color(0xffEAA14E)
      );
  }
}