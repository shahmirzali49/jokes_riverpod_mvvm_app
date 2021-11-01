import 'package:chucknorrisjokes/view/jokes_category_screen.dart';
import 'package:chucknorrisjokes/view/jokes_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'JokesApp',
      initialRoute: JokesCategoryScreen.routeName,
      routes: <String, WidgetBuilder>{
        JokesCategoryScreen.routeName: (_) => const JokesCategoryScreen(),
        JokesDetailScreen.routeName: (_) => const JokesDetailScreen(),
      },
    );
  }
}
