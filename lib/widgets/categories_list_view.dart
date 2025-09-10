import 'package:flutter/material.dart';
import 'package:news_app/models/category.dart';
import 'package:news_app/widgets/category_item.dart';

class CategoriesListView extends StatelessWidget {
  final Function(Category) onCategorySelected;
  final Category? selectedCategory;

  const CategoriesListView({
    super.key,
    required this.onCategorySelected,
    this.selectedCategory,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      padding: const EdgeInsets.symmetric(vertical: 5),
      color: Colors.teal.withOpacity(0.95),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CategoryItem(
            category: categories[index],
            onTap: () => onCategorySelected(categories[index]),
            isSelected: categories[index].title == selectedCategory?.title,
          );
        },
        itemCount: categories.length,
      ),
    );
  }
}