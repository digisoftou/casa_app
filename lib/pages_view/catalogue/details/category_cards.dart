import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../CasaColors.dart';
import '../../../models/category_model.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class CategoryCards extends StatelessWidget {
  const CategoryCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<CategoryModel> categoriesList = [
      CategoryModel(icon: 'assets/svg_icons/category_icons/shirt.svg', name: AppLocalizations.of(context)!.shirt, bgImage: 'assets/categories_bg/shirtBg.jpg'),
      CategoryModel(icon: 'assets/svg_icons/category_icons/trousers.svg', name: AppLocalizations.of(context)!.trousers, bgImage: 'assets/categories_bg/trousersBg.jpg'),
      CategoryModel(icon: 'assets/svg_icons/category_icons/shoes.svg', name: AppLocalizations.of(context)!.shoes, bgImage: 'assets/categories_bg/shoesBg.jpg'),
      CategoryModel(icon: 'assets/svg_icons/category_icons/dress.svg', name: AppLocalizations.of(context)!.dress, bgImage: 'assets/categories_bg/dressBg.jpg'),
      CategoryModel(icon: 'assets/svg_icons/category_icons/hat.svg', name: AppLocalizations.of(context)!.hat, bgImage: 'assets/categories_bg/hatBg.jpg'),
    ];
    final Size screenSize = MediaQuery.of(context).size;
    return Container(
      height: 100,
      width: screenSize.width,
      margin: EdgeInsets.only(top: 5, bottom: 5),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoriesList.length,
          itemBuilder: (context, index){
            return GestureDetector(
              onTap: (){
                // print(index);
                // setState(() {
                //   selectedTypeIndex = index;
                // });
              },
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            categoriesList[index].bgImage,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: CasaColors.textSearchGrey.withOpacity(0.8)
                        ),
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Center(
                          child: SvgPicture.asset(
                              categoriesList[index].icon
                          ),
                        ),
                      ),



                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Text(categoriesList[index].name,
                      style: TextStyle(
                        color: CasaColors.textSearchGrey,
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
