import 'package:flutter/material.dart';

import '../widgets/choice_theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            ChoiceTheme(),
          ],
        ));
  }
}
