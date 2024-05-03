import 'package:casa_app/CasaColors.dart';
import 'package:casa_app/models/home_model.dart';
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
      AppLocalizations.of(context)!.look,
      AppLocalizations.of(context)!.jewelry,
      AppLocalizations.of(context)!.all,
    ];

    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: CasaColors.white,
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 70),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 27, right: 27),
                child: const ProgramAppBar(),
              ),
              Container(
                margin: const EdgeInsets.only(left: 27, right: 27),
                child: const Divider(
                  color: CasaColors.dividerGrey,
                ),
              ),
              Container(
                height: 40,
                width: screenSize.width,
                margin: const EdgeInsets.only(top: 20),
                child: ListView(
                  padding: const EdgeInsets.only(left: 27),
                  scrollDirection: Axis.horizontal,
                  children: catalogueTypes.map((type) {
                    final index = catalogueTypes.indexOf(type);
                    return GestureDetector(
                      onTap: () {
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
                            color:
                            CasaColors.linearIndicatorColor.withOpacity(0.4),
                            width: 1,
                          ),
                        ),
                        margin: const EdgeInsets.symmetric(horizontal: 7),
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                        child: Center(
                          child: Text(
                            type,
                            style: TextStyle(
                              color: selectedTypeIndex == index
                                  ? CasaColors.white
                                  : CasaColors.linearIndicatorColor.withOpacity(0.9),
                            ),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),

              const SizedBox(height: 10),
              LayoutBuilder(
                builder: (context, constraints) {
                  return Container(
                    margin: const EdgeInsets.only(left: 27, right: 27),
                    child: MasonryGridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                      const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      mainAxisSpacing: 11,
                      crossAxisSpacing: 11,
                      itemCount: homeExample.length,
                      itemBuilder: (context, index) => GestureDetector(
                          onTap: () {
                            // Navigator.pushNamed(context, '/productDetails', arguments: products[index]);
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: screenSize.width * 0.43,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(14),
                                  child: Image.asset(
                                    homeExample[index].image,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 6),
                              Text(
                                homeExample[index].description,
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: CasaColors.black,
                                ),
                              ),
                            ],
                          ),
                        ),

                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
