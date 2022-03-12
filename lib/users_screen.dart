import 'package:flutter/material.dart';

class UsersModel {
  final int id;
  final String names;
  final String phone;
  UsersModel({
    required this.id,
    required this.names,
    required this.phone,
  });
}

class UsersScreen extends StatelessWidget {
  List<UsersModel> users = [
    UsersModel(
      id: 1,
      names: 'ghassan nabil',
      phone: '+970597584005',
    ),
    UsersModel(
      id: 1,
      names: 'ahmed nabil',
      phone: '+970597584005',
    ),
    UsersModel(
      id: 1,
      names: 'ali nabil',
      phone: '+970597584005',
    ),
    UsersModel(
      id: 1,
      names: ' nabil',
      phone: '+970597584005',
    ),
    UsersModel(
      id: 1,
      names: 'ghassan nabil',
      phone: '+970597584005',
    ),
    UsersModel(
      id: 1,
      names: 'ahmed nabil',
      phone: '+970597584005',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Users',
          ),
        ),
        body: ListView.separated(
          itemBuilder: (context, index) => BuildUsersItem(users[index]),
          separatorBuilder: (context, index) => Container(
            width: double.infinity,
            height: 1.0,
            color: Colors.grey[300],
          ),
          itemCount: users.length,
        ));
  }

  Widget BuildUsersItem(UsersModel user) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 25,
              child: Text(
                '${user.id}',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '${user.names}',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '${user.phone}',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
}
