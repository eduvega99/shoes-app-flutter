import 'package:flutter/material.dart';


class ShoesDescription extends StatelessWidget {
  
  final String title;
  final String description;

  const ShoesDescription({
    Key? key, 
    required this.title, 
    required this.description
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Text(title, style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w600)),
          const SizedBox(height: 10),
          Text(description, style: const TextStyle(height: 1.6, fontSize: 16, fontWeight: FontWeight.w300, color: Colors.black54))
        ],
      ),
    );
  }
}