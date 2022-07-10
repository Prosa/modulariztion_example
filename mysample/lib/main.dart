import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:mysample/theme/get_theme.dart';
import 'package:mysample/theme/main_container_theme.dart';
import 'package:mysample/widget/main_container.dart';

@immutable
class AppTheme extends ThemeExtension<AppTheme> {
  const AppTheme({
    this.mainContainerTheme,
  });

  final MainContainerTheme? mainContainerTheme;

  @override
  AppTheme copyWith({MainContainerTheme? mainContainerTheme}) {
    return AppTheme(
        mainContainerTheme: mainContainerTheme ?? this.mainContainerTheme);
  }

  @override
  AppTheme lerp(ThemeExtension<AppTheme>? other, double t) {
    if (other is! AppTheme) {
      return this;
    }
    return AppTheme(
      mainContainerTheme: mainContainerTheme,
    );
  }

  // Optional
  @override
  String toString() => 'No Instance for this yet: MYSAMPLE_THEME';
}

void main() {
  // Slow down time to see lerping.
  timeDilation = 5.0;
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isLightTheme = true;

  void toggleTheme() {
    setState(() => isLightTheme = !isLightTheme);
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: MyApp._title,
      theme: GetTheme.lightTheme,
      darkTheme: GetTheme.darkTheme,
      themeMode: Get.isDarkMode ? ThemeMode.dark : ThemeMode.light,
      home: Home(
        isLightTheme: isLightTheme,
        toggleTheme: toggleTheme,
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    Key? key,
    required this.isLightTheme,
    required this.toggleTheme,
  }) : super(key: key);

  final bool isLightTheme;
  final void Function() toggleTheme;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const MainContainer(
            width: 100,
            height: 100,
          ),
          ElevatedButton(
              onPressed: () {
                Get.changeTheme(
                    Get.isDarkMode ? GetTheme.lightTheme : GetTheme.darkTheme);
              },
              child: const Text('Change theme'))
        ],
      )),
    );
  }
}
