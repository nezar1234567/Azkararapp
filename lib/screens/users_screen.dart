import 'package:flutter/material.dart';

class UsersScreen extends StatelessWidget {
  const UsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return    ListView.separated(
    // physics: NeverScrollableScrollPhysics(),
    // physics: ClampingScrollPhysics(),
    // physics: AlwaysScrollableScrollPhysics(),

    scrollDirection: Axis.vertical,
    itemBuilder: (context, index){
    return ListTile(
    leading: Icon(Icons.person),
    title: Text('User Name :$index ' ),
    subtitle: Text('User Email'),
    );
    },
    separatorBuilder: (context, index){
    return Divider(
    thickness: 1,
    indent: 30,
    endIndent: 30,
    );
    },
    itemCount: 5,
    );
  }
}
