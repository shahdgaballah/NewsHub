import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newz_app/core/layout/news_app/controller/state.dart';
import 'package:newz_app/core/shared/widgets/my_form_field.dart';

import '../../../../../layout/news_app/controller/cubit.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsStates>(
      listener:(context, state) {

      } ,
      builder: (context, state) {
        var cubit = NewsCubit.get(context);
        var controller =TextEditingController();
        return  Scaffold(
          appBar: AppBar(
            leading: IconButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                icon:Icon(Icons.arrow_back)),
          ),

          body: Column(
            children: [
              Padding(padding: const EdgeInsets.all(20.0),
              child: MyFromField(controller: controller,
                  type: TextInputType.text,
                  prefix: Icons.search,
                  text: 'Search',
                radius: 10.0,
              ),



              ),

             // Expanded(
                  // child: ListView.separated(
                  //     itemBuilder: (context, index) => ,
                  //     separatorBuilder: separatorBuilder,
                  //     itemCount: itemCount)),


            ],
          ),
        );
      },

    );
  }
}
