import 'package:casa_app/CasaColors.dart';
import 'package:casa_app/models/home_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../navigation/app_bar.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  int selectedTypeIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<String> catalogueTypes = [
      AppLocalizations.of(context)!.all,
      AppLocalizations.of(context)!.jewelry,
      AppLocalizations.of(context)!.style,
      AppLocalizations.of(context)!.look,
    ];

    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
    backgroundColor: CasaColors.white,
      body: Container(
        margin: EdgeInsets.only(top: 70),
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(left: 30, right: 30),
                child: ProgramAppBar()
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              child: Divider(
                color: CasaColors.dividerGrey,
              ),
            ),
            Container(
              height: 40,
              width: screenSize.width,
              margin: EdgeInsets.only(top: 20, bottom: 5),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: catalogueTypes.length,
                  itemBuilder: (context, index){
                    return GestureDetector(
                      onTap: (){
                        setState(() {
                          selectedTypeIndex = index;
                        });
                      },
                      child: Container(
                        height: 36,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: selectedTypeIndex == index
                            ? CasaColors.black
                            : CasaColors.searchFieldBg,
                          border: Border.all(
                            color: CasaColors.linearIndicatorColor.withOpacity(0.4),
                            width: 1,
                          ),
                        ),
                        margin: EdgeInsets.symmetric(horizontal: 14),
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Center(
                          child: Text(
                            catalogueTypes[index],
                            style: TextStyle(
                              color: selectedTypeIndex == index
                                  ? CasaColors.white
                                  :CasaColors.linearIndicatorColor.withOpacity(0.9)
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 30, right: 30),
                child: MasonryGridView.builder(
                    gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    mainAxisSpacing: 4,
                    crossAxisSpacing: 4,
                    itemCount: homeExample.length,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(4),
                      child: GestureDetector(
                        onTap: (){
                         // Navigator.pushNamed(context, '/productDetails', arguments: products[index]);
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(14),
                              child: Image.asset(
                                homeExample[index].image,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(height: 6,),
                            Text(homeExample[index].description,
                              style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: CasaColors.black
                              ),),
                          ],
                        ),
                      ),
                    )

                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

