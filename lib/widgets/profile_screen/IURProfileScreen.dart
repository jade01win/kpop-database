import 'package:flutter/material.dart';
import 'package:kpop_database/helpers/colors/colors_helper.dart';

import 'IURGradientButton.dart';
import 'IURProfileBio.dart';
import 'IURProfileImage.dart';
import 'IURProfileName.dart';

class IURProfileSection extends StatelessWidget {
  const IURProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(
        bottom: Radius.circular(20),
      ),
      child: Container(
        width: double.infinity,
        color: ColorHelper.hex("#252735"),
        child: Padding(
          padding: const EdgeInsets.only(top: 50) +
              const EdgeInsets.symmetric(
                horizontal: 20,
              ),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(),
                  Icon(
                    Icons.account_tree_rounded,
                    color: Theme.of(context).scaffoldBackgroundColor,
                    size: 28,
                  ),
                ],
              ),
              const IURProfileImage(),
              const SizedBox(
                height: 10,
              ),
              const IURProfileName(),
              const SizedBox(
                height: 10,
              ),
              IURProfileBioAndTags(
                hashtagsList: const <String>[
                  "blackpink",
                  "kpop",
                  "femaleKPOP",
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const IURGradientFollowButton(),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
