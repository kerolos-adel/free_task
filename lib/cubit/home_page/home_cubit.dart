import 'package:bloc/bloc.dart';

import 'home_state.dart';

class PagesBloc extends Bloc<LandingPageEvent, LandingPageState> {
  PagesBloc() : super(const LandingPageInitial(tabIndex: 0)) {
    on<LandingPageEvent>((event, emit) {
      if (event is TabChange) {
        emit(LandingPageInitial(tabIndex: event.tabIndex));
      }
    });
  }
}


