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
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12)
      ),
      child: Row(
        children: [
          SizedBox(width: 5,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        Taskname,
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                    ),
                   IconButton(onPressed:Onpressed, icon: Icon(Icons.arrow_forward_ios,))

                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
