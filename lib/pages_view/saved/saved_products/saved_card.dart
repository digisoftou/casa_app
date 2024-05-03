import 'package:flutter/material.dart';

import '../../../CasaColors.dart';
import '../../../models/folders_model.dart';


class SavedCard extends StatelessWidget {
  const SavedCard({
    super.key,
    required this.folder,
  });

  final FoldersModel folder;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SizedBox(
        height: screenSize.width/2.5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: screenSize.height < 700
                      ? screenSize.width/5
                      : screenSize.width/4.6 - 2,
                  height: screenSize.height < 700
                      ? 90
                      : 117,
                  margin: const EdgeInsets.only(right: 2),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15)
                    ),
                    child: Image.asset(
                      folder.products[0].image,
                      //post.savedProducts[0].image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      width: screenSize.width/5.5,
                      height: screenSize.height < 700
                          ? 45
                          : 57,
                      margin: const EdgeInsets.only(bottom: 2),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(15),
                        ),
                        child: Image.asset(
                          folder.products[1].image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: screenSize.width/5.5,
                      height: screenSize.height < 700
                          ? 43
                          : 57,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(15),
                        ),
                        child: Image.asset(
                          folder.products[2].image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 4,),
            Text(
              folder.name,
              style: const TextStyle(
                  color: CasaColors.folderNameColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w600
              ),
            ),
            RichText(
              text: TextSpan(
                style: const TextStyle(color: Colors.black, fontSize: 16),
                children: <TextSpan>[
                  TextSpan(
                    text: '${folder.products.length} пости ',
                    style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: CasaColors.black
                    ),
                  ),
                  TextSpan(
                    text: folder.createdAt,
                    style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                        color: CasaColors.textGrey
                    ),

                  ),

                ],
              ),
            )
          ],
        )
    );
  }
}

