import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:social_app/config/app_colors.dart';
import 'package:social_app/config/app_constants.dart';
import 'package:social_app/generated/l10n.dart';
import 'package:social_app/pages/main_page.dart';
import 'package:social_app/providers/store.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Store()),
      ],
      child: ScreenUtilInit(
        designSize: const Size(
          AppConstants.designWidth,
          AppConstants.designHeight,
        ),
        builder: (_) => _builderMaterialApp(),
      ),
    );
  }

  MaterialApp _builderMaterialApp() {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // setup locale
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      supportedLocales: S.delegate.supportedLocales,
      locale: const Locale('ja', 'JP'),
      // title
      title: '',
      // theme
      theme: ThemeData(
        primaryColor: AppColors.c2196F3,
      ),
      // navigation
      initialRoute: '/',
      routes: {
        '/': (context) => const MainPage(),
      },
    );
  }
}
