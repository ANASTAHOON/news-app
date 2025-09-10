import 'package:flutter/material.dart';
import 'package:news_app/models/category.dart';
import 'package:news_app/widgets/categories_list_view.dart';
import 'package:news_app/screens/saved_news_screen.dart';
import 'package:news_app/const.dart';
import 'package:news_app/widgets/news_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Category? selectedCategory;

  void _selectCategory(Category category) {
    setState(() {
      selectedCategory = category;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'News App',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
        actions: [
          IconButton(
            icon: const Icon(Icons.bookmark, color: Colors.white),
            tooltip: 'Saved News',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SavedNewsScreen()),
              );
            },
          ),
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            backgroundColor: Colors.teal,
            floating: true,
            snap: true,
            expandedHeight: 150,
            flexibleSpace: FlexibleSpaceBar(
              background: CategoriesListView(
                onCategorySelected: _selectCategory,
                selectedCategory: selectedCategory,
              ),
            ),
          ),
        ],
        body: selectedCategory == null
            ? const Center(
          child: Text(
            'Select a category to view news',
            style: TextStyle(fontSize: 18, color: Colors.black54),
          ),
        )
            : ListView.builder(
          itemCount: (categoryNews[selectedCategory!.title]?.length ?? 0) + 1,
          itemBuilder: (context, index) {
            if (index == 0) {
              return const SizedBox(height: 16); // Padding at the top
            }
            final newsList = categoryNews[selectedCategory!.title]!;
            return NewsItem(
              news: newsList[index - 1],
              onSave: () {
                setState(() {
                  if (!savedNews.contains(newsList[index - 1])) {
                    savedNews.add(newsList[index - 1]);
                  } else {
                    savedNews.remove(newsList[index - 1]);
                  }
                });
              },
            );
          },
        ),
      ),
    );
  }
}