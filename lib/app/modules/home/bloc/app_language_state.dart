part of 'app_language_bloc.dart';


sealed class AppLanguageState {}


class LanguageLoaded extends AppLanguageState {
  final Locale locale;
  LanguageLoaded(this.locale);
}