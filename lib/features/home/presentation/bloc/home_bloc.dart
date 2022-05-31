import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState()) {
    on<_SelectIndex>(_onSelectIndex);
  }

  Future<void> _onSelectIndex(
      _SelectIndex event, Emitter<HomeState> emit) async {
    emit(
      state.copyWith(
          status: HomeStatus.success, selectedIndex: event.selectedIndex),
    );
  }
}
