import 'package:flutter/material.dart';

import 'pages/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HackerNews App',
      theme: ThemeData.light(
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
