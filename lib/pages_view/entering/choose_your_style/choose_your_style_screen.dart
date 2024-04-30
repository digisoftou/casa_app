import 'package:carousel_slider/carousel_slider.dart';
import 'package:casa_app/CasaColors.dart';
import 'package:casa_app/models/style_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ChooseYourStyleScreen extends StatefulWidget {
  const ChooseYourStyleScreen({super.key});

  @override
  State<ChooseYourStyleScreen> createState() => _ChooseYourStyleScreenState();
}

class _ChooseYourStyleScreenState extends State<ChooseYourStyleScreen> {

  int currentStyleIndex = 1;

  void _handlePageChanged(int index) {
    setState(() {
      currentStyleIndex = index + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: CasaColors.whiteBackground,
      body: Container(
        margin: EdgeInsets.only(top: 70),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 150,
                    child: Image.asset(
                      'assets/logo/9cd85e748dd94a37d9e800b321312986.png',
                      width: 200,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  IconButton(
                      onPressed: (){},
                      icon: Icon(
                        Icons.close,
                        color: CasaColors.iconsColor,
                      ))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: 35,
                  top: screenSize.height < 700
                      ? 20
                      : 50,
                  bottom: screenSize.height < 700
                      ? 30
                      : 50,),
              alignment: Alignment.centerLeft,
              child: Text(
                AppLocalizations.of(context)!.chooseStyle,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500
                ),
              ),
            ),
            SizedBox(
              width: screenSize.width ,// 1.3,
              height: screenSize.height / 2.43,
              child: CarouselSlider.builder(
                      itemCount: stylesList.length,
                      options: CarouselOptions(
                          onPageChanged: (int index, CarouselPageChangedReason reason) {
                            _handlePageChanged(index);
                          },
                          padEnds: false,
                        height: 320,
                        viewportFraction: 0.8,
                        enlargeCenterPage: true,
                        pageSnapping: true,
                        initialPage: 0,
                        enableInfiniteScroll: false
                      ),
                      itemBuilder: (context, itemIndex, pageViewUndex){
                        return Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(14),
                              child: Container(
                                  width: screenSize.width / 1.5,
                                  height: screenSize.height / 2.43,
                                  child:Image.asset(
                                    stylesList[itemIndex].image,
                                    fit: BoxFit.fitWidth,
                                  ),
                              )
                            ),
                            Positioned(
                              bottom:30,
                              left: 15,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      stylesList[itemIndex].name,
                                      style: TextStyle(
                                        color: CasaColors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                      ),
                                  ),
                                  Text(
                                    stylesList[itemIndex].description,
                                    style: TextStyle(
                                      color: CasaColors.white,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                                bottom: 30,
                                right: 20,
                                child: Icon(
                                  Icons.add_circle,
                                  color: CasaColors.white,
                                  size: 27,
                                )
                            )

                          ],
                        );
                      },
                    ),

            ),
            Container(
              margin: EdgeInsets.only(
                  top: screenSize.height < 700
                    ? 30
                    : 50,
                  left: 30,
                  bottom: screenSize.height < 700
                      ? 10
                      : 20,
              ),
              width: screenSize.width,
              alignment: Alignment.centerLeft,
              child: Text(
                stylesList.length < 10
                  ? '0$currentStyleIndex/0${stylesList.length}'
                  : '$currentStyleIndex/${stylesList.length}',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: CasaColors.textLightGrey
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: LinearProgressIndicator(
                minHeight: 2,
                backgroundColor: CasaColors.linearIndicatorBg,
                color: CasaColors.linearIndicatorColor,
                value: currentStyleIndex / stylesList.length,
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: screenSize.height < 700
                  ? 20
                  : 50,
                  bottom: screenSize.height < 700
                      ? 15
                      : 40,),
              child: ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, "/bottomNavigation");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14.0),
                  ),
                ),
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 80),
                  child: Text(
                    AppLocalizations.of(context)!.nextButtonTitle,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

