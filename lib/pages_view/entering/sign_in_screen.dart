
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../CasaColors.dart';
import '../splash_screen/grid_photos.dart';


class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

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
                stops: const [0.0, 0.35],
              ),
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 37),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    AppLocalizations.of(context)!.signIn,
                    style: const TextStyle(
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
                        hintText: AppLocalizations.of(context)!.e_mail,
                        hintStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: CasaColors.textGrey,
                        ),
                        contentPadding: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
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
                        border: InputBorder.none,
                        hintText: AppLocalizations.of(context)!.password,
                        hintStyle: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: CasaColors.textGrey
                        ),
                        contentPadding: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                      ),
                    ),
                  ),
                  Container(
                    width: screenSize.width - 80,
                    margin: const EdgeInsets.only(bottom: 10),
                    child: const Divider(
                      thickness: 1,
                      color: CasaColors.grey,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: (){
                          //Navigator.pushNamed(context, "/signIn");
                        },
                        style: ButtonStyle(
                          overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
                          elevation: MaterialStateProperty.all<double>(0), // Ваша висота ефекту підйому
                          backgroundColor: MaterialStateProperty.all<Color>(CasaColors.grey), // Ваш колір фону
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14.0),
                            ),
                          ),
                        ),
                        child: SizedBox(
                          height: 60,
                         width: screenSize.height < 700
                          ? screenSize.width/4
                          : screenSize.width/3.7,
                         child: Center(
                           child: Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/svg_icons/google-icon-logo.svg',
                                  width: 25,
                                  height: 25,
                                ),
                                SizedBox(width: screenSize.height < 700
                                    ? 3
                                    : 15,),
                                const Text(
                                  'Google',
                                  style: TextStyle(
                                      color: CasaColors.textGrey,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400
                                  ),
                                ),
                              ],
                            ),
                         ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: (){
                          //Navigator.pushNamed(context, "/signIn");
                        },
                        style: ButtonStyle(
                          overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
                          elevation: MaterialStateProperty.all<double>(0), // Ваша висота ефекту підйому
                          backgroundColor: MaterialStateProperty.all<Color>(CasaColors.grey), // Ваш колір фону
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14.0),
                            ),
                          ),
                        ),
                        child: SizedBox(
                          height: 60,
                          width: screenSize.height < 700
                              ? screenSize.width/4
                              : screenSize.width/3.7,
                          child: Center(
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/svg_icons/apple-logo.svg',
                                  width: 25,
                                  height: 25,
                                ),
                                SizedBox(width: screenSize.height < 700
                                    ? 3
                                    : 15,),
                                const Text(
                                  'Apple',
                                  style: TextStyle(
                                      color: CasaColors.textGrey,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          AppLocalizations.of(context)!.doNotHaveAnAccount,
                          style: TextStyle(
                              color: CasaColors.textGrey,
                              fontSize: screenSize.height < 700
                                ? 15
                                : 16,
                              fontWeight: FontWeight.w400
                          ),
                        ),
                        TextButton(
                            onPressed: (){
                              Navigator.pushNamed(context, "/signUp");
                            },
                            style: ButtonStyle(
                              overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
                            ),
                            child: Text(AppLocalizations.of(context)!.toSignUp,
                              style: TextStyle(
                                  color: CasaColors.textGrey,
                                  fontSize: screenSize.height < 700
                                      ? 15
                                      : 16,
                                  fontWeight: FontWeight.w400
                              ),)),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: screenSize.height < 700
                        ? 20
                        : 40,
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
                          style: const TextStyle(
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

