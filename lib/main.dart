import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe/model/board_model.dart';
import 'package:tic_tac_toe/screens/lets_play.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => BoardModel(),
        child: MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
                seedColor: const Color.fromARGB(255, 6, 3, 11)),
            scaffoldBackgroundColor: const Color.fromARGB(255, 196, 228, 255),
            useMaterial3: true,
          ),
          home: const LetsPlay(),
        ));
  }
}
