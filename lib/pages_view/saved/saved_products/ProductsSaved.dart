
import 'package:casa_app/models/folders_model.dart';

import 'package:casa_app/pages_view/saved/saved_products/saved_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


import 'create_folder.dart';

class ProductsSaved extends StatelessWidget {
  const ProductsSaved({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SizedBox(
        width: screenSize.width,
        height: screenSize.height/1.5,
        child: Column(
          children: [
            const SizedBox(height: 20,),
            Row(
              children: [
                const CreateFolderContainer(),
                const SizedBox(width: 15,),
                SavedCard(folder: foldersList[0],)
              ],
            ),
            Expanded(
              // width: screenSize.width,
              // height: 350,
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 25,
                      crossAxisSpacing: 15
                  ),
                  itemCount: foldersList.length - 1 ,
                  itemBuilder: (context, index){
                    return GestureDetector(
                      // onTap: (){
                      //   Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => CollectionsDetailsScreen(post: savesPosts[index]),
                      //     ),
                      //   );
                      //
                      // },
                      child: SavedCard(folder: foldersList[index + 1],),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
