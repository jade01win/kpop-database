import 'package:flutter/material.dart';
import 'package:kpop_database/helpers/colors/colors.dart';

class IURProfileName extends StatelessWidget {
  const IURProfileName({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Jennie Kim",
      style: Theme.of(context).textTheme.headline1!.copyWith(
            color: IURColors.white,
          ),
    );
  }
}
