import 'package:flutter/material.dart';
import 'package:mentalhealthapp/core/theme.dart';
import 'package:mentalhealthapp/feautures/music/presentation/pages/music_screen.dart';

class PlaylistScreen extends StatelessWidget {
  PlaylistScreen({super.key});
  final List<Map<String,String>> songs = [
  {
    "title": "Song 1",
    "artist": "Artist 1",
    "bg": 'assets/child_with_dog.png'
  },
   {
    "title": "Song 1",
    "artist": "Artist 1",
    "bg": 'assets/child_with_dog.png'
  },
   {
    "title": "Song 1",
    "artist": "Artist 1",
    "bg": 'assets/child_with_dog.png'
  },
   {
    "title": "Song 1",
    "artist": "Artist 1",
    "bg": 'assets/child_with_dog.png'
  }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DefaultColors.white,
      appBar: AppBar(
        title:  Text('Chill Playlist',style: Theme.of(context).textTheme.titleMedium),
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body:Padding(
        padding: const EdgeInsets.all(20),
        child: SizedBox(
        child: ListView.builder(
          itemCount: songs.length,
          itemBuilder: (context,index){
          return Container(
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(20)
            ),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(songs[index]['bg']!),
              ),
              trailing: Icon(Icons.arrow_forward_ios,size: 15,),
              title: Text(songs[index]['title']!,style: Theme.of(context).textTheme.labelMedium,),
              subtitle: Text(songs[index]['artist']!,style: Theme.of(context).textTheme.labelSmall,),
              onTap: (){
                Navigator.push(context,
                 MaterialPageRoute(
                  builder:(context)=>MusicScreen())
                 );
              },
            ),
          );
        }),
        ),
      ),
    );
  }
}
