import 'package:flutter/material.dart';

import '../app/theme_provider.dart';

// TODO: как без statefull виджета ?
class ChoiceTheme extends StatefulWidget {
  const ChoiceTheme({super.key});

  @override
  State<ChoiceTheme> createState() => _ChoiceThemeState();
}

class _ChoiceThemeState extends State<ChoiceTheme> {
  @override
  Widget build(BuildContext context) {
    return SegmentedButton(
      segments: const <ButtonSegment<ThemeMode>>[
        ButtonSegment(
            value: ThemeMode.light, label: Icon(Icons.light_mode_rounded)),
        ButtonSegment(value: ThemeMode.system, label: Icon(Icons.settings)),
        ButtonSegment(
            value: ThemeMode.dark, label: Icon(Icons.nightlight_round_sharp)),
      ],
      selected: {ThemeController.of(context).currentTheme},
      onSelectionChanged: (Set<ThemeMode> newSelection) => setState(() {
        ThemeController.of(context).setTheme(newSelection.first);
      }),
    );
  }
}
