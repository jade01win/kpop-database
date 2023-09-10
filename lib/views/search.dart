import 'package:flutter/material.dart';
import 'package:kpop_database/widgets/search_screen/IURSearchField.dart';

import 'package:kpop_database/widgets/home/QtatusBarSizedBox.dart';
import 'package:kpop_database/widgets/search_screen/IURAppBar.dart';
import 'package:kpop_database/widgets/search_screen/IURCategoriesScrollView.dart';
import 'package:kpop_database/widgets/search_screen/StaggeredPosts.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const StatusBarSizedBox(
            additionalHeight: 10,
          ),
          const IURAppBar(),
          const SizedBox(
            height: 25,
          ),
          const IURCategoriesScrollView(),
          const SizedBox(
            height: 25,
          ),
          const IURSearchField(),
          const SizedBox(
            height: 25,
          ),
          StaggeredPosts(),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
