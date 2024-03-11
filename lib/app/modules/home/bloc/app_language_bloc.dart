

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../../../../model/language_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
part 'app_language_event.dart';
part 'app_language_state.dart';

class AppLanguageBloc extends Bloc<AppLanguageEvent, AppLanguageState> {
  AppLanguageBloc() : super(LanguageLoaded(Locale(Languages.languages[0].code??""))) {
    on<ChangeLanguageEvent>((event, emit) {
      emit(LanguageLoaded(Locale(event.language.code??"") ));
    });
    
  }
}
