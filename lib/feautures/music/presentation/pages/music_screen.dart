import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:mentalhealthapp/core/theme.dart';

class MusicScreen extends StatelessWidget {
  const MusicScreen({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          onTap: (){
            Navigator.of(context).pop();
          },
          child: Image.asset('assets/down_arrow.png')),
        actions: [
          Image.asset('assets/transcript_icon.png'),
          SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset('assets/child_with_dog.png',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20),
            Text('Rain On Glass',
            style: Theme.of(context).textTheme.labelLarge,),
            Text('By: Painting with passion',
            style: Theme.of(context).textTheme.labelSmall,),

            Spacer(),
            ProgressBar(
              progress: Duration(microseconds: 1000),
             total: Duration(milliseconds: 5000),
             baseBarColor: DefaultColors.lightpink,
             thumbColor: DefaultColors.pink,
             progressBarColor: DefaultColors.pink,
             onSeek: (duration) {
              print('user selectd new duration : $duration');
             } ,
             ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: (){},
                 icon:Icon(Icons.shuffle,color: DefaultColors.pink,)),

                  IconButton(onPressed: (){},
                 icon:Icon(Icons.skip_previous_rounded,color: DefaultColors.pink,)),

                  IconButton(onPressed: (){},
                  iconSize: 80,
                 icon:Icon(Icons.pause_circle,color: DefaultColors.pink,)),

                  IconButton(onPressed: (){},
                 icon:Icon(Icons.skip_next_rounded,color: DefaultColors.pink,)),

                   IconButton(onPressed: (){},
                 icon:Icon(Icons.repeat,color: DefaultColors.pink,)),
              ],
            )
          ],
          ),
      )
    );
  }
}