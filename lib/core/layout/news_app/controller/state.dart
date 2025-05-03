abstract class NewsStates{}

class NewsInitialState extends NewsStates{}

class NewsChangeBottomNav extends NewsStates{}

class NewsGetBusinessLoading extends NewsStates{}

class NewsGetBusinessSuccess extends NewsStates{}

class NewsGetBusinessFailure extends NewsStates{
  final String error;

  NewsGetBusinessFailure(this.error);

}


