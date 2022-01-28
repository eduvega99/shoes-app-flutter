import 'package:flutter/material.dart';
import 'package:shoes_app/widgets/widgets.dart';


class ShoesDescriptionScreen extends StatelessWidget {

  const ShoesDescriptionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              const ShoesPreviewCard(isFullScreen: true),
              Positioned(
                top: 30,
                left: 15,
                child: IconButton(
                  color: Colors.white,
                  icon: const Icon(Icons.arrow_back),
                  onPressed: ( ) { }, 
                ),
              )
            ],
          ),

          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: const [
                  ShoesDescription(
                    title: 'Nike Air Max 720',
                    description: "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so."
                  ),

                  _BuyButton(),

                  _ColorsAndOptions(),

                  _FloatingButtons()

                ],
              ),
            )  
          )
        ],
      )
    );
  }
}

class _BuyButton extends StatelessWidget {
  
  const _BuyButton({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Row(
        children: const [
          Text('80.00 €', style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800)),
          Spacer(),
          CustomRoundedButton(text: 'Buy now'),
        ]
      ),
    );
  }
}

class _ColorsAndOptions extends StatelessWidget {
  
  const _ColorsAndOptions({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: const [
          Expanded(
            child: _ColorButtons()
          ),
          
          CustomRoundedButton(text: 'More related items', heigth: 30, color: Color(0xffFFC675), widthPadding: 10)
        ],
      ),
    );
  }
}

class _ColorButtons extends StatelessWidget {
  const _ColorButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        Positioned(child: ColorButton( Color(0xffC6D642) ), left: 90,),
        Positioned(child: ColorButton( Color(0xffFFAD29) ), left: 60,),
        Positioned(child: ColorButton( Color(0xff2099F1) ), left: 30,),
        ColorButton( Color(0xff364D56) ),
      ],
    );
  }
}

class _FloatingButtons extends StatelessWidget {

  const _FloatingButtons({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.white,
            child: const Icon(Icons.favorite, color: Colors.red),
            elevation: 3,
            onPressed: () { },
          ),

          FloatingActionButton(
            backgroundColor: Colors.white,
            child: Icon(Icons.shopping_cart, color: Colors.grey.shade400),
            elevation: 3,
            onPressed: () { },
          ),

          FloatingActionButton(
            backgroundColor: Colors.white,
            elevation: 3,
            child: Icon(Icons.settings, color: Colors.grey.shade400),
            onPressed: () { },
          )
      ]),
    );
  }
}