import 'package:flutter/material.dart';
import 'package:perfecteggs/blocs/app.bloc.dart';
import 'package:perfecteggs/pages/splash.page.dart';
import 'package:perfecteggs/themes/theme.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Sempre que buscar um AppBloc, ele buscara um na memoria
    // e não instanciara um novo, assim não perdendo o estado
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AppBloc>.value(
          value: AppBloc(),
        ),
      ],
      child: Main(),
    );
  }
}

class Main extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Perfect Egg',
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      home: SplashPage(),
    );
  }
}