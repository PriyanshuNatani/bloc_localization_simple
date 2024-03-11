import 'package:bloc_localization_simple/app/modules/home/bloc/app_language_bloc.dart';
import 'package:bloc_localization_simple/app/modules/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(MultiBlocProvider(providers: [
    BlocProvider<AppLanguageBloc>(create: (context) => AppLanguageBloc()),
    // Add other bloc providers here
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppLanguageBloc, AppLanguageState>(
      builder: (context, state) {
  
        if(state is LanguageLoaded){
           return MaterialApp(
            title: 'Flutter Demo',
            locale: state.locale,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home: const HomePage());
        }
        return SizedBox.shrink();
      },
    );
  }
}
