import 'package:flutter/material.dart';
import 'package:news_app/models/category.dart';

class CategoryItem extends StatelessWidget {
  final Category category;
  final VoidCallback? onTap;
  final bool isSelected;

  const CategoryItem({
    super.key,
    required this.category,
    this.onTap,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          child: Column(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(category.image),
                radius: isSelected ? 45 : 40,
                backgroundColor: Colors.teal.withOpacity(0.1),
              ),
              const SizedBox(height: 8),
              Text(
                category.title,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: isSelected ? Colors.yellowAccent : Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}