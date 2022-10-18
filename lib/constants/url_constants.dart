class UrlConstants {
  static const String _urlBeginning = "api.content.tripadvisor.com/api";
  static const String _apiVersion = "v1";
  static const String _locationPath = "$_urlBeginning/$_apiVersion/location";
  static const String nearbySearchUrl = "$_locationPath/nearby_search";
}
