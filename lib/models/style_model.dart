class StyleModel {
  final String image;
  final String name;
  final String description;

  StyleModel({
    required this.image,
    required this.name,
    required this.description,
  });
}

final List<StyleModel> stylesList = [
  StyleModel(
      image: 'assets/carousel/carousel1.jpg',
      name: 'Casual Boss',
      description: 'Denim & Shirt'),
  StyleModel(
      image: 'assets/carousel/carousel2.jpg',
      name: 'Casual Boss',
      description: 'Denim & Shirt'),
  StyleModel(
      image: 'assets/carousel/carousel1.jpg',
      name: 'Casual Boss',
      description: 'Denim & Shirt'),
  StyleModel(
      image: 'assets/carousel/carousel2.jpg',
      name: 'Casual Boss',
      description: 'Denim & Shirt'),
  StyleModel(
      image: 'assets/carousel/carousel2.jpg',
      name: 'Casual Boss',
      description: 'Denim & Shirt')
];
