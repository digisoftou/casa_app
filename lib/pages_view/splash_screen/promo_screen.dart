
import 'package:casa_app/CasaColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'grid_photos.dart';


class PromoPage extends StatelessWidget {
  const PromoPage({super.key});

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
            Positioned(
              bottom: 0,
              child: Container(
                width: screenSize.width,
                height: screenSize.height ,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [CasaColors.whiteBackground.withOpacity(0.2), CasaColors.whiteBackground],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [screenSize.height < 700
                        ? 0.0
                        : 0.3, 0.75],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 100,
                      width: 200,
                      child: Image.asset(
                        'assets/logo/9cd85e748dd94a37d9e800b321312986.png',
                        width: 200,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Text(
                      AppLocalizations.of(context)!.appTitle,
                      style: const TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w300
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 30,),
                    ElevatedButton(
                      onPressed: (){
                        Navigator.pushNamed(context, "/signIn");
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14.0),
                        ),
                      ),
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            vertical: screenSize.height < 700
                              ? 0
                              : 10,
                            horizontal: screenSize.height < 700
                              ? 70
                              : 80
                        ),
                        child: Text(
                          AppLocalizations.of(context)!.startButtonTitle,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                    ),
                      const SizedBox(height: 20,),
                  ],
                ),
              ),
            )
          ],
        )
    );
  }
}

