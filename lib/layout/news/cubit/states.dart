abstract class NewsState{}

class NewsInitialState extends NewsState{}

class NewsBottomNavState extends NewsState{}

class NewsGetBusinessState extends NewsState{}
class NewsLoadingBusinessState extends NewsState{}
class NewsGetBusinessErrorState extends NewsState{
  final String error;
  NewsGetBusinessErrorState(this.error);
}

class NewsGetSportsState extends NewsState{}
class NewsLoadingSportsState extends NewsState{}
class NewsGetSportsErrorState extends NewsState{
  final String error;
  NewsGetSportsErrorState(this.error);
}

class NewsGetScienceState extends NewsState{}
class NewsLoadingScienceState extends NewsState{}
class NewsGetScienceErrorState extends NewsState{
  final String error;
  NewsGetScienceErrorState(this.error);
}
