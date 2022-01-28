import 'package:flutter/material.dart';


class ColorButton extends StatelessWidget {
  
  final Color color;

  const ColorButton( this.color, {Key? key} ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: _getBoxDecoration(),
    );
  }

  BoxDecoration _getBoxDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(100),
      color: color
    );
  }
}