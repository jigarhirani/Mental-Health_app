import 'package:flutter/material.dart';
import 'package:mentalhelthapp/pages/chat.dart';

class ConsultantTitle extends StatelessWidget {
  final icon;
  final String consultantName;
  final String consultantType;
  final Color;
  final int imagenumber;

  const ConsultantTitle(
      {Key? key,
      required this.icon,
      required this.consultantName,
      required this.consultantType,
      required this.Color,
      required this.imagenumber})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              return Chat();
            },
          ));
        },
        child: Expanded(
          child: Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(16)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Container(
                        // padding: EdgeInsets.all(16),
                        // color: Color,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/image/$imagenumber.jpg'),
                            radius: 30,
                          ),
                        ),
                        // child: Icon(
                        //   icon,
                        //   color: Colors.white,
                        // ),
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //title
                        Text(
                          consultantName,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),

                        SizedBox(
                          height: 5,
                        ),
                        //subtitile
                        Text(
                          consultantType,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                ),
                Icon(Icons.more_horiz),
              ],
            ),
          ),
        ),
      ),
    );
    ;
  }
}
