import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../CasaColors.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CreateFolderContainer extends StatelessWidget {
  const CreateFolderContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SizedBox(
      height: screenSize.width/2.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              width: screenSize.width/2.5,
              height: screenSize.height < 700
                  ? 90
                  : 117,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: CasaColors.searchFieldBg,
                border: Border.all(
                  color: CasaColors.black.withOpacity(0.3),
                  width: 0.5,
                ),
              ),
              child: Center(
                child:  Container(
                    width: 50,
                    height: 50,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.transparent,
                      border: Border.all(
                        color: CasaColors.black,
                        width: 0.5,
                      ),
                    ),
                    child: SvgPicture.asset(
                      'assets/svg_icons/add.svg',
                    )
                ),
              )

          ),
          const SizedBox(height: 4,),
          Text(
            AppLocalizations.of(context)!.createFolder,
            style: const TextStyle(
                color: CasaColors.folderNameColor,
                fontSize: 16,
                fontWeight: FontWeight.w600
            ),
          ),
        ],
      ),
    );
  }
}
