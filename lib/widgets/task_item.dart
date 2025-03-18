import 'package:flutter/material.dart';
import 'package:muhimat_app/constants.dart';
import 'package:muhimat_app/widgets/custom_text.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.teal,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundColor: kPrimaryColor,
            child: CircleAvatar(
              radius: 46,
              backgroundColor: kSecondryColor,
              child: CustomText(txt: '00:00 AM', fontsize: 18),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  title: CustomText(maxLines: 2, txt: 'Flutter tips'),

                  subtitle: CustomText(
                    fontsize: 17,
                    fontWeight: FontWeight.w500,
                    color: Colors.white60,
                    txt:
                        'Hive is a key-value database written in Dart. It’s well-suited for storing small amounts of data persistently and is a great alternative to SQLite and SharedPrefrences. Here’s why you might love it',
                    maxLines: 5,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: CustomText(
                    fontsize: 16,
                    txt: 'Fri 2025,18,3',
                    fontWeight: FontWeight.w400,
                    color: Colors.white54,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
