abstract class ShopLoginStates {}

class ShopLoginInitialState extends ShopLoginStates{}
class ShopLoginLoadingState extends ShopLoginStates{}
class ShopLoginSuccessesState extends ShopLoginStates{}
class ShopLoginErrorState extends ShopLoginStates{
  final String error;
  ShopLoginErrorState(this.error);

}
