part of 'user_bloc.dart';

@immutable
abstract class UserEvent {}

class ActivateUser extends UserEvent {
  final User user;

  ActivateUser({required this.user});
}

class ChangeUserAge extends UserEvent {
  final int age;

  ChangeUserAge({required this.age});
}

class AddUserJob extends UserEvent {
  final String job;

  AddUserJob({required this.job});
}

class DeleteUser extends UserEvent {}
