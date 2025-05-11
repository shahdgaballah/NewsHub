import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../layout/news_app/controller/cubit.dart';
import '../../../../../layout/news_app/controller/state.dart';
import '../../../../../shared/widgets/build_article_item.dart';
import '../../../../../shared/widgets/my_form_field.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = NewsCubit.get(context);
        var article = NewsCubit.get(context).search;
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
                cubit.searchController.clear();
              },
              icon: Icon(Icons.arrow_back_ios, color: Colors.white),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                MyFromField(
                  controller: cubit.searchController,
                  type: TextInputType.text,
                  prefix: Icons.search,
                  text: 'Search',
                  radius: 15.0,
                  isUppercase: false,
                  onChanged: (value) {
                    cubit.getSearch(value);
                  },
                ),
                SizedBox(height: 20.0),
                Expanded(
                  child: BuildArticleItem(
                    article: article,
                    isLoading: true,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}