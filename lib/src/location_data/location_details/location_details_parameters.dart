import 'package:trip_advisor_api/src/models/api_settings.dart';

class LocationDetailsParameters {
  final String locationId;
  final Currencies? currency;
  final Languages? language;

  LocationDetailsParameters(
      {required this.locationId, this.currency, this.language});
}
