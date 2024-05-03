import 'package:casa_app/CasaColors.dart';
import 'package:casa_app/pages_view/catalogue/sliver_appbar_delegate.dart';
import 'package:flutter/material.dart';

import '../navigation/app_bar.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'details/catalogue_grid.dart';
import 'details/category_cards.dart';
class CatalogueScreen extends StatefulWidget {
  const CatalogueScreen({super.key});

  @override
  State<CatalogueScreen> createState() => _CatalogueScreenState();
}

class _CatalogueScreenState extends State<CatalogueScreen> {

  late final ScrollController scrollController;
  double scrollPercentage=1.0;


  @override
  void initState() {
    super.initState();
    scrollController= ScrollController();
  }



  @override
  Widget build(BuildContext context) {


    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: CasaColors.white,
      body: Container(
        margin: const EdgeInsets.only(top: 70),
        child: Column(
          children: [
            Container(
                margin: const EdgeInsets.only(left: 27, right: 27),
                child: const ProgramAppBar()
            ),
            Container(
              margin: const EdgeInsets.only(left: 27, right: 27),
              child: const Divider(
                color: CasaColors.dividerGrey,
              ),
            ),

            Expanded(
              child: CustomScrollView(
                controller: scrollController,
                physics: const AlwaysScrollableScrollPhysics(),
                slivers: [
                  SliverPersistentHeader(
                      delegate: SliverAppbarDelegate(
                        maxHeight: 45,
                        minHeight: 0,
                        child: Container(
                          width: screenSize.width,
                          margin: const EdgeInsets.only(top: 5, bottom: 5),
                          child: Container(
                            margin: const EdgeInsets.only(left: 27, right: 27),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(AppLocalizations.of(context)!.category,
                                  style: const TextStyle(
                                    color: CasaColors.textSearchGrey,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ),),
                                TextButton(
                                    onPressed: (){},
                                    child: Row(
                                      children: [
                                        Text(AppLocalizations.of(context)!.viewAll,
                                          style: const TextStyle(
                                            color: CasaColors.textGrey,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                          ),),
                                        const Icon(
                                          Icons.navigate_next,
                                          color: CasaColors.textGrey,
                                          size: 20,
                                        )
                                      ],
                                    ))
                              ],
                            ),
                          ),
                        ),
                      )),
                  SliverPersistentHeader(
                      delegate: SliverAppbarDelegate(
                        maxHeight: 105,
                        minHeight: 0,
                        child: const CategoryCards(),
                      )),
                  SliverPersistentHeader(
                      delegate: SliverAppbarDelegate(
                        maxHeight: 900,
                        minHeight: 900,
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 27, right: 27),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(AppLocalizations.of(context)!.youCanLikeIt,
                                    style: const TextStyle(
                                      color: CasaColors.textSearchGrey,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                    ),),
                                  TextButton(
                                      onPressed: (){},
                                      child: Row(
                                        children: [
                                          Text(AppLocalizations.of(context)!.view,
                                            style: const TextStyle(
                                              color: CasaColors.textGrey,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12,
                                            ),),
                                          const Icon(
                                            Icons.navigate_next,
                                            color: CasaColors.textGrey,
                                            size: 20,
                                          )
                                        ],
                                      ))
                                ],
                              ),
                            ),
                            const CatalogueGrid(),

                          ],
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),


    );
  }
}


