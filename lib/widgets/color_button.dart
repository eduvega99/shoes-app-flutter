import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:shoes_app/provider/ui_provider.dart';


class ColorButton extends StatelessWidget {
  
  final Color color;
  final String assetImage;

  const ColorButton({ 
    Key? key,
    required this.color,
    required this.assetImage
  } ) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final uiProvider = Provider.of<UIProvider>(context);
    
    return GestureDetector(
      onTap: () => uiProvider.assetImage = assetImage,
      child: Container(
        width: 45,
        height: 45,
        decoration: _getBoxDecoration(),
      ),
    );
  }

  BoxDecoration _getBoxDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(100),
      color: color
    );
  }
}