import 'package:flutter/material.dart';
class OnboardingButton extends StatelessWidget {
  final String text;
  final VoidCallback Onpressed;
  const OnboardingButton({super.key, required this.text, required this.Onpressed});

  @override
  Widget build(BuildContext context) {
    return Container(
              width: 400,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12),
              ),
              child: ElevatedButton(onPressed:Onpressed, 
              style: ElevatedButton.styleFrom(
                fixedSize: Size(400, 70),
                backgroundColor:Theme.of(context).focusColor,
                shadowColor: Colors.transparent,
                elevation: 0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
              ),
              child: Text(text,style: Theme.of(context).textTheme.bodyLarge,),
              ),
            );
  }
}