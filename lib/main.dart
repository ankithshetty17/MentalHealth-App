import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentalhealthapp/core/theme.dart';
import 'package:mentalhealthapp/presentation/bottomnavbar/bloc/navigation_bloc.dart';
import 'package:mentalhealthapp/presentation/onboarding/pages/onboarding_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(providers:[
      BlocProvider(create: (_)=> NavigationBloc()),
    ], 
    child: 
    MaterialApp(
        theme: AppTheme.lightTheme,
        debugShowCheckedModeBanner: false,
        home: OnboardingPage(),
    ),
      );
  }
}
