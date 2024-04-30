import 'package:casa_app/models/folder_types_enum.dart';
import 'package:casa_app/models/product_model.dart';

class FoldersModel{
  FolderTypes type;
  String name;
  String createdAt;
  List<ProductModel> products;

  FoldersModel({
    required this.type,
   required this.name,
    required this.createdAt,
    required this.products,
});
}

List<FoldersModel> foldersList = [
    FoldersModel(
      type: FolderTypes.products,
        name: 'Всі товари',
        createdAt: '2 місяці',
        products: productsList),
  FoldersModel(
      type: FolderTypes.products,
      name: 'Мій гардероб',
      createdAt: '2 місяці',
      products: garderobeList),
  FoldersModel(
      type: FolderTypes.products,
      name: 'Обране',
      createdAt: '2 місяці',
      products: favouriteList),
];

