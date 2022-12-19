import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import 'package:flutter_blo/models/user.dart';

part 'user_state.dart';
part 'user_event.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(const UserInitialState()) {
    on<ActivateUser>((event, emit) {
      emit(UserSetState(newUser: event.user));
    });

    on<DeleteUser>((event, emit) {
      emit(const UserInitialState());
    });

    on<ChangeUserAge>((event, emit) {
      if (!state.existUser) {
        return;
      } else {
        // emit(UserSetState(
        //     newUser: User(
        //         name: state.user!.name, age: event.age, job: state.user!.job)));
        emit(UserSetState(newUser: state.user!.copyWith(age: event.age)));
      }
    });

    on<AddUserJob>((event, emit) {
      if (!state.existUser) {
        return;
      } else {
        // emit(UserSetState(
        //     newUser: User(
        //         name: state.user!.name,
        //         age: state.user!.age,
        //         job: state.user!.job..add(event.job))));
        final jobs = [...state.user!.job, event.job];
        emit(UserSetState(newUser: state.user!.copyWith(job: jobs)));
      }
    });
  }
}
