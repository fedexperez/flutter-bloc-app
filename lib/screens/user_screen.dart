import 'package:flutter/material.dart';
import 'package:flutter_blo/bloc/user/user_bloc.dart';
import 'package:flutter_blo/models/user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final userBloc = BlocProvider.of<UserBloc>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('User'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
              color: Colors.blue,
              onPressed: () {
                userBloc.add(ActivateUser(
                    user: User(
                        name: 'Pepe',
                        age: 22,
                        job: ['Footballer', 'FullStack'])));
              },
              child: const Text('Create user',
                  style: TextStyle(color: Colors.white))),
          MaterialButton(
              color: Colors.blue,
              onPressed: () {
                userBloc.add(ChangeUserAge(age: 55));
              },
              child: const Text('Change age',
                  style: TextStyle(color: Colors.white))),
          MaterialButton(
              color: Colors.blue,
              onPressed: () {
                userBloc.add(AddUserJob(job: 'Hockey Player'));
              },
              child:
                  const Text('Add job', style: TextStyle(color: Colors.white))),
        ],
      )),
    );
  }
}
