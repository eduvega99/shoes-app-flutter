import 'package:flutter/material.dart';


class CustomRoundedButton extends StatelessWidget {
  
  final String text;
  final Color color;
  final double heigth;
  final double widthPadding;

  const CustomRoundedButton({
    Key? key, 
    required this.text,
    this.color = const Color(0xffEAA14E),
    this.heigth = 45,
    this.widthPadding = 25
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: heigth,
        padding: EdgeInsets.symmetric(horizontal: widthPadding),
        alignment: Alignment.center,
        decoration: getBoxDecoration(),
        child: FittedBox(
          child: Text(text, style: const TextStyle(color: Colors.white)),
        ),
    );
  }


  BoxDecoration getBoxDecoration() {
    return BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: color
      );
  }
}