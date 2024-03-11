part of 'app_language_bloc.dart';


sealed class AppLanguageEvent {}

class ChangeLanguageEvent extends AppLanguageEvent{
  final LanguageEntity language;
  ChangeLanguageEvent(this.language);
}