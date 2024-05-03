
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../CasaColors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProgramAppBar extends StatelessWidget {
  const ProgramAppBar({
    super.key
  });


  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        Stack(
          children: [
            Positioned(
              left: 0,
              child: SvgPicture.asset(
                'assets/svg_icons/profile_icons/menu.svg'
            ),),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 20,
                  width: 150,
                  margin: EdgeInsets.only(
                      bottom: screenSize.height < 700
                        ? 20
                        : 30),
                  child: Image.asset(
                    'assets/logo/9cd85e748dd94a37d9e800b321312986.png',
                    width: 200,
                    fit: BoxFit.fitWidth,
                  ),
                ),

              ],
            ),
            Positioned(
              right: 40,
              child: SvgPicture.asset(
                  'assets/svg_icons/email.svg'
              ),
            ),
            Positioned(
              right: 0,
              child: Container(
                margin: const EdgeInsets.only(left: 15),
                child: SvgPicture.asset(
                    'assets/svg_icons/card.svg'
                ),
              ),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(top: 10, bottom: 20),
          width: screenSize.width,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9),
            color: CasaColors.searchFieldBg,
            border: Border.all(
              color: CasaColors.searchFieldBorder,
              width: 1,
            ),
          ),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: const Icon(
                Icons.search_sharp,
                color: CasaColors.searchFieldBorder,
              ),
              suffixIcon: Container(
                padding: const EdgeInsets.all(5),
                child: SvgPicture.asset(
                    'assets/svg_icons/camera.svg'
                ),
              ),
              border: InputBorder.none,
              hintText: AppLocalizations.of(context)!.search,
              hintStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w200,
                  color: CasaColors.textSearchGrey
              ),
              contentPadding: const EdgeInsets.symmetric( horizontal: 10),
            ),
          ),
        ),
      ],
    );
  }
}
