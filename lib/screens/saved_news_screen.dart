import 'package:flutter/material.dart';
import 'package:news_app/const.dart';
import 'package:news_app/models/category.dart';
import 'package:news_app/widgets/news_item.dart';

class SavedNewsScreen extends StatelessWidget {
  const SavedNewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Saved News',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: savedNews.isEmpty
          ? const Center(
        child: Text(
          'No saved news yet!',
          style: TextStyle(
            fontSize: 18,
            color: Colors.black54,
          ),
        ),
      )
          : ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: savedNews.length,
        itemBuilder: (context, index) {
          return NewsItem(
            news: savedNews[index],
            onSave: () {
              savedNews.remove(savedNews[index]);
              (context as Element).markNeedsBuild();
            },
          );
        },
      ),
    );
  }
}