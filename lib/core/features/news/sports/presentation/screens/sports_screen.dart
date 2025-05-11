import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newz_app/core/layout/news_app/controller/cubit.dart';
import 'package:newz_app/core/layout/news_app/controller/state.dart';
import 'package:newz_app/core/shared/widgets/build_article.dart';

class SportsScreen extends StatelessWidget {
  const SportsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var article = NewsCubit.get(context).sports;
        if (state is NewsGetSportsLoadingState) {
          return Center(child: CircularProgressIndicator());
        }
        return ListView.separated(
          itemBuilder: (context, index) => BuildArticle(model: article[index]),
          physics: BouncingScrollPhysics(),
          separatorBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Divider(height: 1.0, color: Colors.grey, thickness: 1.5),
          ),
          itemCount: article.length,
        );
      },
    );
  }
}