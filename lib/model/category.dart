import '../data.dart';

class Category {
  const Category({
    this.name,
    this.description,
    this.image,
    this.categoryType,
  });

  final String name;
  final String description;
  final String image;
  final CategoryType categoryType;
}
