class Category {
  final String icon, title;

  Category({required this.icon, required this.title});
}

List<Category> demo_categories = [
  Category(
    icon: "icons/Tshirt.svg",
    title: "T-Shirts",
  ),
  Category(
    icon: "icons/shirt.svg",
    title: "Shirts",
  ),
  Category(
    icon: "icons/dress.svg",
    title: "Dress",
  ),
  Category(
    icon: "icons/pants.svg",
    title: "Pants",
  ),
];