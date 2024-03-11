import 'package:bloc_localization_simple/app/modules/home/bloc/app_language_bloc.dart';
import 'package:bloc_localization_simple/model/language_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Column(children: [
            Text(AppLocalizations.of(context)!.helloWorld),
            Spacer(),
              ElevatedButton(onPressed: (){
              BlocProvider.of<AppLanguageBloc>(context).add(
                ChangeLanguageEvent(Languages.languages[0], )
              );
            }, child: Text('Change Language to english')),
            ElevatedButton(onPressed: (){
              BlocProvider.of<AppLanguageBloc>(context).add(
                ChangeLanguageEvent(Languages.languages[1], )
              );
            }, child: Text('Change Language to spenish'))
      ]),
    );
  }
}