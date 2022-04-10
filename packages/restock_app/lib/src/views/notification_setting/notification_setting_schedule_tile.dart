import 'package:flutter/material.dart';
import '../notification_schedules/notification_schedules_page.dart';

/// 設定済み通知リストのタイル
class NotificationSettingScheduleTile extends StatelessWidget {
  const NotificationSettingScheduleTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => _navigateToListPage(context),
      leading: const Icon(Icons.alarm_on),
      title: const Text('期限のお知らせ予定'),
      trailing: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: const [
          // FittedBox(child: Text('何件')),
          FittedBox(child: Icon(Icons.chevron_right)),
        ],
      ),
    );
  }

  /// タップでリスト画面へ遷移する
  void _navigateToListPage(BuildContext context) {
    Navigator.of(context).pushNamed(NotificationSchedulesPage.routeName);
  }
}