import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newz_app/core/layout/news_app/controller/cubit.dart';
import 'package:newz_app/core/layout/news_app/controller/state.dart';
import 'package:shimmer/shimmer.dart';

class BusinessScreen extends StatelessWidget {
  const BusinessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsStates>(
        listener: (context, state){},
      builder:(context, state) {
          var article = NewsCubit.get(context).business;
          return ListView.separated(itemBuilder: (context, index) => buildArticle(context,
              article[index]),
              physics: BouncingScrollPhysics(),
              separatorBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15.0
                ),
                child: Divider(height: 1.0,
                  color: Colors.grey,thickness: 1.5,),
              ),
              itemCount:article.length );
    },
    ) ;
  }
}

Widget buildArticle(context, Map model)=> Padding(
  padding: const EdgeInsets.all(20.0),
  child: Column(
    children: [
      Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),

            child: CachedNetworkImage(
              width: 150,
              height: 150,
              fit: BoxFit.cover,
              placeholder: (context, url) =>
                  Shimmer.fromColors(
                    baseColor: Colors.grey,
                    highlightColor: Colors.white,
                    child: Container(color: Colors.black,),),
              errorWidget: (context, url, error) =>
                  Icon(Icons.error_outline,size: 100.0,color: Colors.grey,),



              imageUrl: model['urlToImage'].toString(),),
          ),
          SizedBox(width: 20.0,),

          Expanded(
            child: SizedBox(
              height: 150.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(model['title'].toString(),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 25.0)),

                  SizedBox(height: 20.0,),
                  if(model['description']!=null)
                  Text(model['description'].toString(),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 20.0)),

                  Spacer(),

                  Text(model['publishedAt'].toString(),
                      maxLines: 1,
                      //overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 15.0)),

                ],
              ),
            ),
          ),
        ],
      ),
    ],
  ),
);