abstract class NewsStates{}

class NewsInitialState extends NewsStates{}

class NewsChangeBottomNav extends NewsStates{}

class NewsGetBusinessLoading extends NewsStates{}

class NewsGetBusinessSuccess extends NewsStates{}

class NewsGetBusinessFailure extends NewsStates{
  final String error;

  NewsGetBusinessFailure(this.error);

}



class SearchInitialState extends NewsStates{}



class SearchGetBusinessLoading extends NewsStates{}

class SearchGetBusinessSuccess extends NewsStates{}

class SearchGetBusinessFailure extends NewsStates{
  final String error;

  SearchGetBusinessFailure(this.error);

}

class NewsGetSportsLoadingState extends NewsStates{}
class NewsGetSportsSuccessState extends NewsStates{}
class NewsGetSportsErrorState extends NewsStates{
  final String error;

  NewsGetSportsErrorState(this.error);
}

class NewsGetScienceLoadingState extends NewsStates{}
class NewsGetScienceSuccessState extends NewsStates{}
class NewsGetScienceErrorState extends NewsStates{
  final String error;

  NewsGetScienceErrorState(this.error);
}


