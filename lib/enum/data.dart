import 'menu_info.dart';
import 'alarm_info.dart';
import 'package:clock/widgets/theme_data.dart';
List<MenuInfo> menuItems = [
  MenuInfo(MenuType.clock, title: 'Clock', image: 'assets/clock.png'),
  MenuInfo(MenuType.alarm, title: 'Alarm', image: 'assets/alarm.png'),
  MenuInfo(MenuType.timer, title: 'Timer', image: 'assets/timer.png'),
  MenuInfo(MenuType.stopwatch,
      title: 'Stopwatch', image: 'assets/stopwatch.png'),
];

List<AlarmInfo> alarms = [
  AlarmInfo(DateTime.now().add(Duration(hours: 1)),description: 'Office',color: GradientColors.sky),
   AlarmInfo(DateTime.now().add(Duration(hours: 1)),description: 'Office',color: GradientColors.sunset )
];
