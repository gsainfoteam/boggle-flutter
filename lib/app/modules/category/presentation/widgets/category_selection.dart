import 'package:boggle_flutter/app/modules/category/data/models/category_model.dart';
import 'package:boggle_flutter/app/modules/category/presentation/widgets/category_button.dart';
import 'package:flutter/material.dart';

typedef OnCategoryTap = void Function(CategoryModel category);

class CategorySelection extends StatelessWidget {
  final List<CategoryModel> items;
  final OnCategoryTap onCategoryTap;
  const CategorySelection({
    super.key,
    required this.items,
    required this.onCategoryTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return CategoryButton(
            title: item.title,
            icon: item.icon,
            onPressed: () => onCategoryTap(item),
          );
        },
      ),
    );
  }
}
