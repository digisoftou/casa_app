import 'package:casa_app/CasaColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../navigation/app_bar.dart';
import 'details/catalogue_grid.dart';
import 'details/category_cards.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class CatalogueScreen extends StatelessWidget {
  const CatalogueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: CasaColors.white,
      body: Container(
        margin: const EdgeInsets.only(left: 30, right: 30, top: 70),
        child: Column(
          children: [
            const ProgramAppBar(),
            const Divider(
              color: CasaColors.dividerGrey,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppLocalizations.of(context)!.category,
                style: TextStyle(
                  color: CasaColors.textSearchGrey,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),),
                TextButton(
                    onPressed: (){},
                    child: Row(
                      children: [
                        Text(AppLocalizations.of(context)!.viewAll,
                          style: TextStyle(
                            color: CasaColors.textGrey,
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),),
                        Icon(
                            Icons.navigate_next,
                          color: CasaColors.textGrey,
                          size: 20,
                        )
                      ],
                    ))
              ],
            ),
            const CategoryCards(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppLocalizations.of(context)!.youCanLikeIt,
                  style: TextStyle(
                    color: CasaColors.textSearchGrey,
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),),
                TextButton(
                    onPressed: (){},
                    child: Row(
                      children: [
                        Text(AppLocalizations.of(context)!.view,
                          style: TextStyle(
                            color: CasaColors.textGrey,
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),),
                        Icon(
                          Icons.navigate_next,
                          color: CasaColors.textGrey,
                          size: 20,
                        )
                      ],
                    ))
              ],
            ),
            const CatalogueGrid()


          ],
        ),
      ),
    );
  }
}


