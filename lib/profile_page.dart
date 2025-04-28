import 'package:flutter/material.dart';

const int items= 20;
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text('item ${(index +1)}'),
          leading: Icon(Icons.person_2_outlined),
          trailing: Icon(Icons.select_all),
          onTap: (){
            print('hai premuto ${(index+1)}');
          },
        );
      },
    );
  }
}
