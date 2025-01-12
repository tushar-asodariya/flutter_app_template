import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../commons/hooks/hooks.dart';
import '../../../router/router.dart';
import '../../top_level_tab/top_level_tab.dart';

class SettingsPageBody extends HookConsumerWidget {
  const SettingsPageBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = useL10n();
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Card(
          child: ListTile(
            onTap: () => ThemeSelectionRoute(tabid: TopLevelTab.settings.name)
                .go(context),
            title: Text(l10n.settingsPageListThemeSelectorLabel),
          ),
        ),
        Card(
          child: ListTile(
            onTap: () =>
                AccountRoute(tabid: TopLevelTab.settings.name).go(context),
            title: Text(l10n.settingsPageListAccountLabel),
          ),
        ),
      ],
    );
  }
}
