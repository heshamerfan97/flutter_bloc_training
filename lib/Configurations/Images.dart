class Images {
  ///Online images base url
  static const String ImageUrl = 'https://*****.com/storage/';

  static const String AssetImages = 'assets/images';


  ///Global assets
  static const String Background = "$AssetImages/background.png";
  static const String Logo = "$AssetImages/logo.png";



  ///Singleton factory
  static final Images _instance = Images._internal();

  factory Images() {
    return _instance;
  }

  Images._internal();
}
