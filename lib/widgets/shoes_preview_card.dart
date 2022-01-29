import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:shoes_app/provider/ui_provider.dart';


class ShoesPreviewCard extends StatelessWidget {
  
  final bool isFullScreen;

  const ShoesPreviewCard({
    Key? key, 
    this.isFullScreen = false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: isFullScreen ? 5 : 20, vertical: 5),
      child: Container(
        width: double.infinity,
        height: 450,
        decoration: getBoxDecoration(),
        child: Column(
          children: [
            const _ShoesAndShadow(),
            if (!isFullScreen)
              const _ShoesSizes()
          ],
        ),
      ),
    );
  }

  BoxDecoration getBoxDecoration() {
    return BoxDecoration(
      borderRadius: getBorderRadius(),
      color: const Color(0xffFFCF53)
    );
  }

  BorderRadius getBorderRadius() {
    if (isFullScreen) {
      return const BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
        bottomLeft: Radius.circular(50), 
        bottomRight: Radius.circular(50)
      );
    }
    return BorderRadius.circular(50);
  }
}

class _ShoesAndShadow extends StatelessWidget {
  
  const _ShoesAndShadow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final uiProvider = Provider.of<UIProvider>(context);

    return Padding(
      padding: const EdgeInsets.all(50),
      child: Stack(
        children: [
          
          const Positioned(
            bottom: 20,
            right: 0,
            child: _ShoesShadow()
          ),

          Image(image: AssetImage(uiProvider.assetImage)),

        ],
      ),
    );
  }
}

class _ShoesShadow extends StatelessWidget {
  const _ShoesShadow({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -0.5,
      child: Container(
        width: 230,
        height: 110,
        decoration: getBoxDecoration(),
      ),
    );
  }

  BoxDecoration getBoxDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(100),
      boxShadow: const [
        BoxShadow( color: Color(0xffEAA14E), blurRadius: 40)
      ]
    );
  }
}

class _ShoesSizes extends StatelessWidget {
  const _ShoesSizes({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          _SizeButton(40),
          _SizeButton(40.5),
          _SizeButton(41),
          _SizeButton(41.5),
          _SizeButton(42),
          _SizeButton(42.5),
        ],
      ),
    );
  }
}

class _SizeButton extends StatelessWidget {
  
  final double size; 
  
  const _SizeButton(this.size, { Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UIProvider>(context);

    final bool isSelected = (size == uiProvider.size);

    return GestureDetector(
      onTap: () => uiProvider.size = size,
      child: Container(
        alignment: Alignment.center,
        width: 45,
        height: 45,
        decoration: getBoxDecoration(isSelected),
        child: Text(
          size.toString().replaceAll('.0', ''), 
          style: getTextStyle(isSelected),
        ),
      ),
    );
  }

  TextStyle getTextStyle(bool isSelected) {
    return TextStyle(
      fontSize: 16, 
      fontWeight: FontWeight.bold,
      color: isSelected ? Colors.white : const Color(0xffF1A23A) 
    );
  }

  BoxDecoration getBoxDecoration(bool isSelected) {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: isSelected ? const Color(0xffF1A23A) : Colors.white,
      boxShadow: isSelected ? [
        const BoxShadow(color: Colors.black12, blurRadius: 12)
      ] : null
    );
  }
}
