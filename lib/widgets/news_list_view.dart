import 'package:flutter/material.dart';
import 'package:news_app/models/category.dart';
import 'package:news_app/widgets/news_item.dart';
import 'package:news_app/const.dart';

class NewsListView extends StatefulWidget {
  final Category category;

  const NewsListView({super.key, required this.category});

  @override
  _NewsListViewState createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  void _saveNews(News news) {
    setState(() {
      if (!savedNews.contains(news)) {
        savedNews.add(news);
      } else {
        savedNews.remove(news);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<News> newsList = categoryNews[widget.category.title] ?? [];

    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.only(top: 8, bottom: 16),
      itemCount: newsList.length,
      itemBuilder: (context, index) {
        return NewsItem(
          news: newsList[index],
          onSave: () => _saveNews(newsList[index]),
        );
      },
    );
  }
}