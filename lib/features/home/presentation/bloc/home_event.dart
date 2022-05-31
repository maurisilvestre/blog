part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.selectIndex(int selectedIndex) = _SelectIndex;
}
