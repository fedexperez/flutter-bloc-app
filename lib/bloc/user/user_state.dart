part of 'user_bloc.dart';

@immutable
abstract class UserState {
  final bool existUser;
  final User? user;

  const UserState({this.existUser = false, this.user});
}

class UserInitialState extends UserState {
  const UserInitialState({super.existUser = false, super.user});
}

class UserSetState extends UserState {
  final User newUser;

  // const UserSetState({super.existUser = true, required this.newUser});
  const UserSetState({required this.newUser})
      : super(existUser: true, user: newUser);
}
