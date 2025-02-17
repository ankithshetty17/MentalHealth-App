// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  final Color color;
  final String Taskname;
  final VoidCallback Onpressed;
  final String title;
   TaskCard({
    Key? key,
    required this.color,
    required this.Taskname,
    required this.Onpressed, required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color:color, 
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                     Text(
                      Taskname,
                     ),
                     IconButton(onPressed: Onpressed, icon:Icon(Icons.arrow_forward_ios,color: Colors.white,size: 12,))
              ],
             )
        ],
      ),
    );
  }
}
