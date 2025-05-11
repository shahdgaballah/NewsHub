import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../../../../../layout/news_app/controller/cubit.dart';
import '../../../../../layout/news_app/controller/state.dart';
import '../../../../../shared/widgets/build_article_item.dart';
class BusinessScreen extends StatelessWidget {
  const BusinessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var article = NewsCubit.get(context).business;
        return BuildArticleItem(article: article);
      },
    );
  }
}
