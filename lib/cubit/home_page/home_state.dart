abstract class LandingPageState {
  final int tabIndex;

  const LandingPageState({required this.tabIndex});
}

class LandingPageInitial extends LandingPageState {
  const LandingPageInitial({required super.tabIndex});
}
abstract class LandingPageEvent {}

class TabChange extends LandingPageEvent {
  final int tabIndex;

  TabChange({required this.tabIndex});
}