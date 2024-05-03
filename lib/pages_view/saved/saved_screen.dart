import 'package:casa_app/CasaColors.dart';
import 'package:casa_app/pages_view/saved/saved_products/ProductsSaved.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../navigation/app_bar.dart';

class SavedScreen extends StatelessWidget {
  const SavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CasaColors.whiteBackground,
      body: Container(
        margin: const EdgeInsets.only(left: 30, right: 30, top: 70),
        child: Column(
            children: [
              const ProgramAppBar(),
              Expanded(
                  child: DefaultTabController(
                    length: 3,
                    child: Column(
                      children: [
                        TabBar(
                          tabs:  [
                            Tab(text: AppLocalizations.of(context)!.products, icon: SvgPicture.asset('assets/svg_icons/saved_tab_icons/products.svg'),),
                            Tab(text: AppLocalizations.of(context)!.posts, icon: SvgPicture.asset('assets/svg_icons/saved_tab_icons/posts.svg'),),
                            Tab(text: AppLocalizations.of(context)!.looks, icon: SvgPicture.asset('assets/svg_icons/saved_tab_icons/looks.svg'),),
                          ],
                          tabAlignment: TabAlignment.fill,
                          labelColor: CasaColors.textSearchGrey,
                          labelStyle: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 12
                          ),
                          indicatorColor: CasaColors.textSearchGrey,
                          indicatorSize: TabBarIndicatorSize.tab,
                          indicatorWeight: 1,
                          //indicator: DotIndicator(),
                          dividerHeight: 0,
                          splashFactory: NoSplash.splashFactory,
                          overlayColor: MaterialStateProperty.resolveWith<Color?>(
                                  (Set<MaterialState> states) {
                                return states.contains(MaterialState.focused) ? null : Colors.transparent;
                              }
                          ),
                        ),
                        const SizedBox(height: 5,),
                        const Expanded(
                            child: TabBarView(
                              children: [
                                ProductsSaved(),
                                ProductsSaved(),
                                ProductsSaved(),

                              ],
                            ))
                      ],
                    ),
                  )
              ),

            ],
        ),
      ),
    );
  }
}
