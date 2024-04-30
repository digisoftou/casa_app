class ProductModel {
  final String name;
  final String image;
  final double price;
  bool isLiked;

  ProductModel({
    required this.name,
    required this.image,
    required this.price,
    this.isLiked = false,
  });
}


List<ProductModel> productsList =[
  ProductModel(image: 'assets/catalogue_example/image1.jpg', name: 'Сукня', price: 64),
  ProductModel(image: 'assets/catalogue_example/image2.jpg', name: 'Сорочка', price: 50),
  ProductModel(image: 'assets/catalogue_example/image3.png', name: 'Взуття', price: 80),
  ProductModel(image: 'assets/catalogue_example/image4.png', name: 'Тренч', price: 75),
];

List<ProductModel> garderobeList = [
  ProductModel(
      name: 'name',
      image: 'assets/svg_icons/products_example/product1.jpg',
      price: 12
  ),
  ProductModel(
      name: 'name',
      image: 'assets/svg_icons/products_example/product2.jpg',
      price: 12
  ),
  ProductModel(
      name: 'name',
      image: 'assets/svg_icons/products_example/product3.jpg',
      price: 12
  ),
];

List<ProductModel> favouriteList = [
  ProductModel(
      name: 'name',
      image: 'assets/svg_icons/products_example/product4.png',
      price: 12
  ),
  ProductModel(
      name: 'name',
      image: 'assets/svg_icons/products_example/product5.png',
      price: 12
  ),
  ProductModel(
      name: 'name',
      image: 'assets/svg_icons/products_example/product6.png',
      price: 12
  ),
];