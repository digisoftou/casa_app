
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../CasaColors.dart';
import '../splash_screen/grid_photos.dart';


class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: CasaColors.whiteBackground,
      body: Stack(
        children: [
          const Positioned(
              top: 0,
              child: GridPhotosMainScreen()
          ),
          Container(
            width: screenSize.width,
            height: screenSize.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [CasaColors.whiteBackground.withOpacity(0.2), CasaColors.whiteBackground],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.0, 0.35],
              ),
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 37),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                   Text(
                    AppLocalizations.of(context)!.signUp,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 26
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 60),
                    width: screenSize.width,
                    height: 60,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: CasaColors.grey,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: AppLocalizations.of(context)!.name,
                        hintStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: CasaColors.textGrey,
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    width: screenSize.width,
                    height: 60,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: CasaColors.grey,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: AppLocalizations.of(context)!.e_mail,
                        hintStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: CasaColors.textGrey
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20, bottom: 10),
                    width: screenSize.width,
                    height: 60,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: CasaColors.grey,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none, // Без контура
                        hintText: AppLocalizations.of(context)!.password,
                        hintStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: CasaColors.textGrey
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          AppLocalizations.of(context)!.haveAnAccount,
                          style: TextStyle(
                              color: CasaColors.textGrey,
                              fontSize: 16,
                              fontWeight: FontWeight.w400
                          ),
                        ),
                        TextButton(
                            onPressed: (){
                              Navigator.pushNamed(context, "/signIn");
                            },
                            child: Text(AppLocalizations.of(context)!.toSignIn,
                              style: TextStyle(
                                  color: CasaColors.textGrey,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400
                              ),)),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: screenSize.height < 700
                            ? 10
                            : 35,
                        bottom: 50),
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.pushNamed(context, "/chooseYourStyle");
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
          ),
        ],
      ),
    );
  }

}

