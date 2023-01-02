import 'package:flutter/material.dart';
import 'package:flutter_bloc_news_app/src/widgets/stories_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HackerNews'),
      ),
      body: const StoriesView(),
    );
  }
}
