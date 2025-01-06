import 'package:flutter/material.dart';
import 'package:yara/ui/sidebarSections/ListSection.dart';
import 'package:yara/ui/sidebarSections/ProfileSection.dart';
import 'package:yara/ui/sidebarSections/QuickGlanceSection.dart';
import 'package:yara/ui/sidebarSections/SearchSection.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchSection(),
        Divider(),
        QuickGlanceSection(),
        Divider(),
        ListSection(),
        Divider(height: 0),
        ProfileSection(),
      ],
    );
  }
}
