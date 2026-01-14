const String apikey = 'sajba7y819098327ksdjbcbjdshndnjjsnljza';
late final String appFlavor;

void initAppFlavor() {
  const String flavor = String.fromEnvironment('app.flavor');
  if (flavor == 'prod') {
    appFlavor = 'prod';
  } else {
    appFlavor = 'dev';
  }
}

class Constants {
  static String get baseUrl {
    if (appFlavor == 'prod') {
      return 'https://cloud-kitchens.in/itc_nbd';
    } else {
      // return 'http://192.168.1.152:8000/itc_nbd'; // local
      return 'https://test.cloud-kitchen.in/itc_nbd'; // test server
    }
  }
}
