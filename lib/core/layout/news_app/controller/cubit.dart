import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newz_app/core/features/news/business/presentation/screens/business_screen.dart';
import 'package:newz_app/core/features/news/science/presentation/screens/science_screen.dart';
import 'package:newz_app/core/features/news/sports/presentation/screens/sports_screen.dart';
import 'package:newz_app/core/layout/news_app/controller/state.dart';
import 'package:newz_app/core/shared/network/remote/dio_helper.dart';

class NewsCubit extends Cubit<NewsStates> {
  NewsCubit() :super(NewsInitialState());

  static NewsCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<BottomNavigationBarItem>items = [
    BottomNavigationBarItem(icon: Icon(Icons.business,), label: 'Business'),
    BottomNavigationBarItem(
        icon: Icon(Icons.sports_baseball,), label: 'Sports'),
    BottomNavigationBarItem(icon: Icon(Icons.science,), label: 'Science'),


  ];

  List<String>titles = [
    'Business',
    'Sports',
    'Science',
  ];

  List<Widget>screens = [
    BusinessScreen(),
    SportsScreen(),
    ScienceScreen(),
  ];

  void changeBottomNav(index) {
    currentIndex = index;
    emit(NewsChangeBottomNav());
    
    // Fetch data based on selected screen
    if (index == 0) {
      getBusiness();
    } else if (index == 1) {
      getSports();
    } else if (index == 2) {
      getScience();
    }
  }

  List<dynamic>business = [];

  List<dynamic>search= [];
  List<dynamic>sports = [];
  List<dynamic>science = [];
  void getSports()
  {
    emit(NewsGetSportsLoadingState());
    NewsHelper.getData(
      url: 'v2/top-headlines',
      query:
      {
        'apiKey' : 'c799708afa624ae3b9742682fb271251',
        'country' : 'us',
        'category' : 'sports',
      },
    )
        .then((value){
      sports = value.data['articles'];
      debugPrint('The Sports is: ${value.data['articles']}');
      emit(NewsGetSportsSuccessState());
    },
    ).catchError((error){
      emit(NewsGetSportsErrorState(error.toString()));
      debugPrint(error.toString());
    });
  }

  void getScience()
  {
    emit(NewsGetScienceLoadingState());
    NewsHelper.getData(
      url: 'v2/top-headlines',
      query:
      {
        'apiKey' : 'c799708afa624ae3b9742682fb271251',
        'country' : 'us',
        'category' : 'science',
      },
    )
        .then((value){
      science = value.data['articles'];
      debugPrint('The Science is: ${value.data['articles']}');
      emit(NewsGetScienceSuccessState());
    },
    ).catchError((error){
      emit(NewsGetScienceErrorState(error.toString()));
      debugPrint(error.toString());
    });
  }

  var searchController= TextEditingController();

  void getBusiness() {
    emit(NewsGetBusinessLoading());

    NewsHelper.getData(
      url: 'v2/top-headlines',
      query: {
        'apiKey': '72d4348cd929450c8aaf16d349fa69a5',
        'country': 'us',
        'category': 'business'
      },
    )
        .then((value){
          business =value.data['articles'];
          debugPrint('The business is: ${value.data['articles']}');

          emit(NewsGetBusinessSuccess());

    }).catchError((error){
      emit(NewsGetBusinessFailure(error.toString()));

      debugPrint(error.toString());

    });

  }


  void getSearch(String value) {
    emit(NewsGetBusinessLoading());

    NewsHelper.getData(
      url: 'v2/everything',
      query: {
        'apiKey': '72d4348cd929450c8aaf16d349fa69a5',
        'q':value
      },
    )
        .then((value){
      search =value.data['articles'];
      debugPrint('The search res are: ${value.data['articles']}');

      emit(SearchGetBusinessSuccess());

    }).catchError((error){
      emit(SearchGetBusinessFailure(error.toString()));

      debugPrint(error.toString());

    });

  }

  //void getSports

  //void getScience



}