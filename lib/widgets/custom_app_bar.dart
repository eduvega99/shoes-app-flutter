import 'package:flutter/material.dart';


class CustomAppBar extends StatelessWidget {

  final String title;

  const CustomAppBar({
    Key? key, 
    required this.title
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Container(
          margin: const EdgeInsets.only(top: 25),
          width: double.infinity,
          child: Row(
            children: const [
              Text('For you', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800)),
              Spacer(),
              Icon(Icons.search)
            ],
          ),
        ),
      ),
    );
  }

}