import 'package:flutter/material.dart';

import 'pages/tela_home.dart';

void main() {

  runApp(
    const MeuApp(),
  );

}

class MeuApp extends StatelessWidget {

  const MeuApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,

      title: "Pokédex",

      theme: ThemeData(

        primarySwatch: Colors.red,

        scaffoldBackgroundColor:
        Colors.grey[100],

        appBarTheme: const AppBarTheme(

          centerTitle: true,

          elevation: 3,
        ),

        elevatedButtonTheme:

        ElevatedButtonThemeData(

          style:
          ElevatedButton.styleFrom(

            shape:
            RoundedRectangleBorder(

              borderRadius:
              BorderRadius.circular(12),
            ),

            padding:
            const EdgeInsets.symmetric(

              horizontal: 20,
              vertical: 12,
            ),
          ),
        ),
      ),

      home: const TelaHome(),
    );
  }
}