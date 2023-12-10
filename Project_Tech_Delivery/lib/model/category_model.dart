class CategoryModel {
  final int id; // PK
  final String name;
  final String image;

  CategoryModel({required this.id, required this.name, required this.image});
}

final List<CategoryModel> listCategory = [
  CategoryModel(
    id: 1,
    name: 'Phone',
    image: 'asset/image/iphone.png',
  ),
  CategoryModel(
    id: 2,
    name: 'Consoles',
    image: 'asset/image/console.png',
  ),
  CategoryModel(
    id: 3,
    name: 'Laptops',
    image: 'asset/image/laptop.png',
  ),
  CategoryModel(
    id: 4,
    name: 'Camera',
    image: 'asset/image/camera.png',
  ),
  CategoryModel(
    id: 5,
    name: 'Headphone',
    image: 'asset/image/sport.webp',
  )
];
