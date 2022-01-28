import 'package:flutter/material.dart';

import 'package:shoes_app/widgets/widgets.dart';


class AddCartButton extends StatelessWidget {
  
  final double price;
  
  const AddCartButton({
    Key? key, 
    required this.price
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        width: double.infinity,
        height: 80,
        decoration: getBoxDecoration(),
        child: Row(
          children: [
            const SizedBox(width: 20),
            Text('$price €', style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w800)),
            const Spacer(),
            const OrangeButton(text: 'Add to cart'),
            const SizedBox(width: 20)
          ],
        ),
      ),
    );
  }

  BoxDecoration getBoxDecoration() {
    return BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Colors.grey.shade300
      );
  }
}