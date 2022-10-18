class UrlConstants {
  static const String baseUrl = "api.content.tripadvisor.com";
  static const String _api = "api/v1";
  static const String _locationPath = "$_api/location";

  static const String nearbySearchUnencodedPath =
      "$_locationPath/nearby_search";

  static const String findSearchUnencodedPath = "$_locationPath/search";
}
