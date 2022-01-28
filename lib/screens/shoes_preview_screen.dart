import 'package:flutter/material.dart';

import 'package:shoes_app/widgets/widgets.dart';


class ShoesPreviewScreen extends StatelessWidget {

  const ShoesPreviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          CustomAppBar(title: 'For you'),
          SizedBox(height: 20),
          
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: _ShoesInformation(),
            ),
          ),
          
          AddCartButton(price: 80)

        ],
      )
    );
  }
}

class _ShoesInformation extends StatelessWidget {
  const _ShoesInformation({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
        GestureDetector(
          child: const Hero(
            tag: 'shoesCard',
            child: ShoesPreviewCard()
          ),
          onTap: ( ) => Navigator.pushNamed(context, 'description'),
        ),

        const ShoesDescription(
          title: 'Nike Air Max 720',
          description: "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so."
        ),
      ],
    );
  }
}