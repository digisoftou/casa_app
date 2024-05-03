
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../CasaColors.dart';
import '../../../models/product_model.dart';

class CatalogueGrid extends StatefulWidget {
  const CatalogueGrid({
    super.key,
  });

  @override
  State<CatalogueGrid> createState() => _CatalogueGridState();
}

class _CatalogueGridState extends State<CatalogueGrid> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return   Expanded(
      // width: screenSize.width,
      // height: 400,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 27),
        child: MasonryGridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          itemCount: productsList.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(4),
            child: GestureDetector(
              onTap: (){
                // Navigator.pushNamed(context, '/productDetails', arguments: products[index]);
              },
              child: ConstrainedBox(
                constraints: BoxConstraints(maxHeight: screenSize.height * 0.37),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        SizedBox(
                          height: screenSize.height * 0.3,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(14),
                            child: Image.asset(
                              productsList[index].image,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          child: IconButton(
                              onPressed: (){
                                setState(() {
                                  productsList[index].isLiked = !productsList[index].isLiked;
                                });
                              },
                              icon: Icon(
                                Icons.favorite,
                                color: productsList[index].isLiked
                                    ? CasaColors.white
                                    : CasaColors.likedColor.withOpacity(0.5),
                                size: 20,
                              )),
                        )
                      ],
                    ),
                    const SizedBox(height: 6,),
                    Text(productsList[index].name,
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: CasaColors.black
                      ),),
                    Text('\$${productsList[index].price}',
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: CasaColors.black
                      ),),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
