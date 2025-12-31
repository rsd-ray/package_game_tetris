import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'gamer/gamer.dart';
import 'gamer/keyboard.dart';
import 'generated/l10n.dart';
import 'material/audios.dart';
import 'panel/page_portrait.dart';

final RouteObserver<ModalRoute> routeObserver = RouteObserver<ModalRoute>();

const screenBorderWidth = 3.0;

const backgroundColor = Color(0xffefcc19);

class _HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //only Android/iOS support land mode
    // bool land = MediaQuery.of(context).orientation == Orientation.landscape;
    // return land ? const PageLand() : const PagePortrait();
    return PagePortrait();
  }
}


class GameTetris extends StatelessWidget {
  const GameTetris({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tetris',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      navigatorObservers: [routeObserver],
      supportedLocales: S.delegate.supportedLocales,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Sound(child: Game(child: KeyboardController(child: _HomePage()))),
      ),
    );
  }
}