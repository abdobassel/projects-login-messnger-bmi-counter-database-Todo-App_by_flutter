import 'package:flutter/material.dart';
import 'package:udemy_mansour/models/user/user_model.dart';

class UsersScreen extends StatelessWidget {
  List<UserModel> users = [
    UserModel(id: 1, name: " mohamed", num: "01250011555"),
    UserModel(id: 2, name: " namaamamama", num: "55555555"),
    UserModel(id: 3, name: " Hasssna sdsad", num: "0156588011555"),
    UserModel(id: 4, name: " ahmed jjjs", num: "01250011555"),
    UserModel(id: 1, name: " mohamed", num: "01250011555"),
    UserModel(id: 2, name: " namaamamama", num: "55555555"),
    UserModel(id: 3, name: " Hasssna sdsad", num: "0156588011555"),
    UserModel(id: 4, name: " ahmed jjjs", num: "01250011555"),
  ];

  UsersScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${users.length} Users'),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => Padding(
          padding: EdgeInsetsDirectional.only(start: 20.0),
          child: Container(
            width: double.infinity,
            height: 1,
            color: Colors.green,
          ),
        ),
        itemBuilder: (context, index) => buildUserItem(users[index]),
        itemCount: users.length,
      ),
    );
  }

  Widget buildUserItem(UserModel user) => Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.blueAccent[200],
                  radius: 40,
                  child: Text(
                    '${user.id}',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${user.name}",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "${user.num}",
                      style: TextStyle(
                          fontSize: 18,
                          color: const Color.fromARGB(255, 58, 1, 1)),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      );
}
