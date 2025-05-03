import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newz_app/core/layout/news_app/controller/cubit.dart';
import 'package:newz_app/core/layout/news_app/news_layout.dart';
import 'package:newz_app/core/shared/network/remote/dio_helper.dart';
import 'package:newz_app/core/shared/themes/theme_mode.dart';

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
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        darkTheme: getDarkMode(),
        themeMode: ThemeMode.dark,
        // theme: ThemeData(
        //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // ),
        home: NewsLayout(),
      ),
    );
  }
}
