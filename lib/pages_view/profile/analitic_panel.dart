import 'package:flutter/material.dart';

import '../../CasaColors.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class AnaliticPanel extends StatelessWidget {
  const AnaliticPanel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text(AppLocalizations.of(context)!.publications,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: CasaColors.textGrey,
              ),),
            Text('573',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: CasaColors.black
              ),),
          ],
        ),
        SizedBox(
          height: 50,
          child: VerticalDivider(
            color: CasaColors.textGrey.withOpacity(0.5),
            thickness: 0.5,
          ),
        ),
        Column(
          children: [
            Text(AppLocalizations.of(context)!.followers,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: CasaColors.textGrey,
              ),),
            Text('2,954',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: CasaColors.black
              ),),

          ],
        ),
        SizedBox(
          height: 50,
          child: VerticalDivider(
            color: CasaColors.textGrey.withOpacity(0.5),
            thickness: 0.5,
          ),
        ),
        Column(
          children: [
            Text(AppLocalizations.of(context)!.following,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: CasaColors.textGrey,
              ),),
            Text('157',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: CasaColors.black
              ),),

          ],
        ),
      ],
    );
  }
}
