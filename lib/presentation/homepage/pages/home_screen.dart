import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentalhealthapp/feautures/meditation/presentation/pages/meditation_screen.dart';
import 'package:mentalhealthapp/feautures/music/presentation/pages/music_screen.dart';
import 'package:mentalhealthapp/presentation/bottomnavbar/bloc/navigation_bloc.dart';
import 'package:mentalhealthapp/presentation/bottomnavbar/widgets/bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
 HomeScreen({super.key});
 final List<Widget> pages = [
   MeditationScreen(),
   MusicScreen()
  ];
  

BottomNavigationBarItem createBottomNavItem(
  {required String assetname,required bool isActive , required BuildContext context}){
  return BottomNavigationBarItem(
    icon: Image.asset(assetname, height: 45,color: isActive? Theme.of(context).focusColor : Theme.of(context).primaryColor,),
    label: '',
  );
}

  @override
 
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<NavigationBloc, NavigationState>(
        builder: (context, state) {
          if(state is NavigationChanged){
            return pages[state.index];
          }
          return pages[0];
        
        },
      ),
          bottomNavigationBar: BlocBuilder<NavigationBloc, NavigationState>(
            builder: (context, state) {
              int currentIndex = 0;
              if(state is NavigationChanged){
                currentIndex = state.index;
              }
              final List<BottomNavigationBarItem> bottomNavBaritem = [ 
                createBottomNavItem(
                  assetname: 'assets/menu_home.png', 
                  isActive: currentIndex == 0, 
                  context: context
                  ),
                    createBottomNavItem(
                  assetname: 'assets/menu_songs.png', 
                  isActive: currentIndex == 1, 
                  context: context
                  ),
              ];
             return BottomNavBar(
            items: bottomNavBaritem, 
            currentIndex: currentIndex);
            },
          ),

          
        
    );
  }
}