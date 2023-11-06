import 'dart:io';

import 'package:flutter/material.dart';

class MessangerScreen extends StatelessWidget {
  const MessangerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        titleSpacing: 20.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 22,
              backgroundImage: NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/en/8/86/Avatar_Aang.png'),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Chats',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: CircleAvatar(
              radius: 25,
              child: Icon(
                Icons.camera_alt_outlined,
                size: 20,
                color: Colors.white,
              ),
              backgroundColor: Colors.blue,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: CircleAvatar(
              radius: 25,
              child: Icon(
                Icons.edit,
                size: 20,
                color: Colors.white,
              ),
              backgroundColor: Colors.blue,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.grey[300]),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.search_rounded)),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Search",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 60,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage(
                                  'https://upload.wikimedia.org/wikipedia/en/8/86/Avatar_Aang.png'),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                  bottom: 2.0, end: 3.3),
                              child: CircleAvatar(
                                backgroundColor: Colors.green,
                                radius: 8,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.5,
                        ),
                        Text(
                          "AbdElRahman bassel shahin",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 7.0,
                  ),
                  Container(
                    width: 60,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage(
                                  'https://upload.wikimedia.org/wikipedia/en/8/86/Avatar_Aang.png'),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                  bottom: 2.0, end: 3.3),
                              child: CircleAvatar(
                                backgroundColor: Colors.green,
                                radius: 8,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.5,
                        ),
                        Text(
                          "AbdElRahman bassel shahin",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 7.0,
                  ),
                  Container(
                    width: 60,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage(
                                  'https://upload.wikimedia.org/wikipedia/en/8/86/Avatar_Aang.png'),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                  bottom: 2.0, end: 3.3),
                              child: CircleAvatar(
                                backgroundColor: Colors.green,
                                radius: 8,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.5,
                        ),
                        Text(
                          "AbdElRahman bassel shahin",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 7.0,
                  ),
                  Container(
                    width: 60,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage(
                                  'https://upload.wikimedia.org/wikipedia/en/8/86/Avatar_Aang.png'),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                  bottom: 2.0, end: 3.3),
                              child: CircleAvatar(
                                backgroundColor: Colors.green,
                                radius: 8,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.5,
                        ),
                        Text(
                          "AbdElRahman bassel shahin",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 7.0,
                  ),
                  Container(
                    width: 60,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage(
                                  'https://upload.wikimedia.org/wikipedia/en/8/86/Avatar_Aang.png'),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                  bottom: 2.0, end: 3.3),
                              child: CircleAvatar(
                                backgroundColor: Colors.green,
                                radius: 8,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.5,
                        ),
                        Text(
                          "AbdElRahman bassel shahin",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 7.0,
                  ),
                  Container(
                    width: 60,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage(
                                  'https://upload.wikimedia.org/wikipedia/en/8/86/Avatar_Aang.png'),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                  bottom: 2.0, end: 3.3),
                              child: CircleAvatar(
                                backgroundColor: Colors.green,
                                radius: 8,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.5,
                        ),
                        Text(
                          "AbdElRahman bassel shahin",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 7.0,
                  ),
                  Container(
                    width: 60,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage(
                                  'https://upload.wikimedia.org/wikipedia/en/8/86/Avatar_Aang.png'),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                  bottom: 2.0, end: 3.3),
                              child: CircleAvatar(
                                backgroundColor: Colors.green,
                                radius: 8,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.5,
                        ),
                        Text(
                          "AbdElRahman bassel shahin",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage(
                                  'https://upload.wikimedia.org/wikipedia/en/8/86/Avatar_Aang.png'),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                  bottom: 2.0, end: 3.3),
                              child: CircleAvatar(
                                backgroundColor: Colors.green,
                                radius: 8,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Abdelrahaman bassel shahin',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      "message my freind  ,hello ,hi message",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.symmetric(
                                            horizontal: 10.0),
                                    child: Container(
                                      width: 6,
                                      height: 8,
                                      decoration: BoxDecoration(
                                        color: Colors.green,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Text("2:00 pm"),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage(
                                  'https://upload.wikimedia.org/wikipedia/en/8/86/Avatar_Aang.png'),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                  bottom: 2.0, end: 3.3),
                              child: CircleAvatar(
                                backgroundColor: Colors.green,
                                radius: 8,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Abdelrahaman bassel shahin',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      "message my freind  ,hello ,hi message",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.symmetric(
                                            horizontal: 10.0),
                                    child: Container(
                                      width: 6,
                                      height: 8,
                                      decoration: BoxDecoration(
                                        color: Colors.green,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Text("2:00 pm"),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
