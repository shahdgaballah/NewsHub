import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newz_app/core/layout/news_app/controller/cubit.dart';
import 'package:newz_app/core/layout/news_app/news_layout.dart';
import 'package:newz_app/core/shared/network/remote/dio_helper.dart';
import 'package:newz_app/core/shared/themes/controller/cubit.dart';
import 'package:newz_app/core/shared/themes/theme_mode.dart';

import 'core/shared/themes/controller/state.dart';

void main() {
  NewsHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => NewsCubit()..getBusiness()),
        BlocProvider(create: (context) => ThemeCubit()),
      ],
      child: BlocConsumer<ThemeCubit, ThemeModeStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            darkTheme: getDarkMode(),
            theme: getLightMode(),
            themeMode: ThemeCubit.get(context).isDark ? ThemeMode.dark : ThemeMode.light,
            home: NewsLayout(),
          );
        },
      ),
    );
  }
}
