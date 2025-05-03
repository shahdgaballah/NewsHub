import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newz_app/core/features/news/search/presentation/screens/search_screen.dart';
import 'package:newz_app/core/layout/news_app/controller/cubit.dart';
import 'package:newz_app/core/layout/news_app/controller/state.dart';

class NewsLayout extends StatelessWidget {
  const NewsLayout({super.key});

  @override
  Widget build(BuildContext context) {

    return BlocConsumer<NewsCubit, NewsStates>(
      listener: (context, state){},
      builder:  (context, state){
        var cubit = NewsCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            title: Text(cubit.titles[cubit.currentIndex],
              //style: Theme.of(context).textTheme.titleLarge,
            ),
            actions: [
              IconButton(onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SearchScreen(),));
              }, icon: Icon(Icons.search)),
              IconButton(onPressed: (){}, icon: Icon(Icons.brightness_4_outlined)),

            ],
          ),

          bottomNavigationBar: BottomNavigationBar(
            items: cubit.items,
          currentIndex: cubit.currentIndex,
            onTap: (index){
              cubit.changeBottomNav(index);
            },

          ),

          body: cubit.screens[cubit.currentIndex],
        );
      },

    );
  }
}
