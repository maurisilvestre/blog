import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_bloc.freezed.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc() : super(const SignUpState()) {
    on<_SelectIndex>(_onSelectIndex);
  }

  Future<void> _onSelectIndex(
      _SelectIndex event, Emitter<SignUpState> emit) async {
    emit(
      state.copyWith(
          status: SignUpStatus.success, selectedIndex: event.selectedIndex),
    );
  }
}
