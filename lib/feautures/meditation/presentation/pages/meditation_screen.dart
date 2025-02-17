import 'package:flutter/material.dart';
import 'package:mentalhealthapp/core/theme.dart';
import 'package:mentalhealthapp/feautures/meditation/presentation/widgets/feeling_buttons.dart';
import 'package:mentalhealthapp/feautures/meditation/presentation/widgets/task_card.dart';

class MeditationScreen extends StatelessWidget {
  const MeditationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Image.asset('assets/menu_burger.png'),
        actions: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/profile.png'),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Padding(padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text('Welcome Back Sabrina!',
           style: Theme.of(context).textTheme.titleLarge,),
            SizedBox(height: 30,),
             Text('How are you feeling today?',
           style: Theme.of(context).textTheme.titleMedium,),
           SizedBox(height: 20,),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FellingButton(onTap: (){}, assetImage: 'assets/happy.png', label: 'Happy', color:DefaultColors.pink),
               FellingButton(onTap: (){}, assetImage: 'assets/relax.png', label: 'Relax', color:DefaultColors.purple),
                FellingButton(onTap: (){}, assetImage: 'assets/calm.png', label: 'Calm', color:DefaultColors.orange),
                 FellingButton(onTap: (){}, assetImage: 'assets/focus.png', label: 'Focus', color:DefaultColors.lightteal),
            ],
           ),
           SizedBox(height: 10,),
           Text('Today\'s Task',style: Theme.of(context).textTheme.titleMedium,),
           SizedBox(height: 10),
           TaskCard(color: Colors.red, Taskname: 'dfskfjsfjlskjfljflfs', Onpressed: (){}, title: 'Morning'),
          
        ],
      ),
      ),
      );
      
  }
}