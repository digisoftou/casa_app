import 'package:flutter/material.dart';

import '../../../CasaColors.dart';
import '../../../models/folders_model.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SavedCard extends StatelessWidget {
  const SavedCard({
    super.key,
    required this.folder,
  });

  final FoldersModel folder;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
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
                  margin: EdgeInsets.only(right: 2),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
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
                      margin: EdgeInsets.only(bottom: 2),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15),
                        ),
                        child: Image.asset(
                          folder.products[1].image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      width: screenSize.width/5.5,
                      height: screenSize.height < 700
                          ? 43
                          : 57,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
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
            SizedBox(height: 4,),
            Text(
              folder.name,
              style: TextStyle(
                  color: CasaColors.folderNameColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w600
              ),
            ),
            RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.black, fontSize: 16),
                children: <TextSpan>[
                  TextSpan(
                    text: '${folder.products.length} пости ',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: CasaColors.black
                    ),
                  ),
                  TextSpan(
                    text: folder.createdAt,
                    style: TextStyle(
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

