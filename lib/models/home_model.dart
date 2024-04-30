class HomeModel{
  String image;
  String description;

  HomeModel({
    required this.image,
    required this.description,
});
}

List<HomeModel> homeExample = [
  HomeModel(image: 'assets/home_page_example/image1.jpg', description: 'Girls in Suits'),
  HomeModel(image: 'assets/home_page_example/image2.jpg', description: 'Raffia Net Bag in Tan, Crochet Raffia Tote'),
  HomeModel(image: 'assets/home_page_example/image3.jpg', description: 'Shop Shoes - sorrite'),
  HomeModel(image: 'assets/home_page_example/image4.jpg', description: 'Girls in Suits'),
  HomeModel(image: 'assets/home_page_example/image5.jpg', description: 'Girls in Suits'),
];