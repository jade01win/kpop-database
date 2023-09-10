import 'package:kpop_database/widgets/cards/easyCard.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  @override
  _Card1State createState() => _Card1State();
}

class _Card1State extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 40.0),
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 25,
              ),
              EasyCard(
                icon: Icons.settings_suggest_outlined,
                title: 'Theme Settings',
                description: 'Ini menu theme settings',
                suffixIcon: Icons.chevron_right,
                onTap: () {},
              ),
              EasyCard(
                icon: Icons.file_download,
                title: 'Download Path',
                description: 'Ini menu Download Path settings',
                suffixIcon: Icons.chevron_right,
                onTap: () {},
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 50.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
