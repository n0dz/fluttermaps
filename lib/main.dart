import 'package:flutter/material.dart';
import 'package:placesnearby/providers/application_bloc.dart';
import 'package:placesnearby/src/screens/homescreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => ApplicationBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          //visualDensity: VisualDensity.adaptivePlatformDensity,
          primarySwatch: Colors.blue,
        ),
        home: HomeScreen(),
      ),
    );
  }
}

/*
*
1. Sync gradle from android studio (must required step)
2. flutter clean
3. flutter pub get
4. flutter run
*
* */