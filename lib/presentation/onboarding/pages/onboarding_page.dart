import 'package:flutter/material.dart';
import 'package:mentalhealthapp/presentation/homepage/pages/home_screen.dart';
import 'package:mentalhealthapp/presentation/onboarding/widgets/button.dart';


class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: Image.asset('assets/onboarding.png',fit: BoxFit.cover,)),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(padding: EdgeInsets.all(20),
            child:OnboardingButton(
              text: 'Let us help you', 
              Onpressed:(){
                Navigator.pushAndRemoveUntil(context,
                 MaterialPageRoute(builder: (context)=> HomeScreen()),
                 (route) => false);
              })
            ),
          )
        ],
      ),
    );
  }
}