## Features

This package lets you communicate directly with the trip advisor contents api [Found Here](https://tripadvisor-content-api.readme.io/reference/overview)
You can search places in radius, search by text and get a lot of info about a place.

## Getting started

In order to use this package you just need to create a trip advisor contents api account.
Once you get the api key itself just Create a TripAdvisorApi instance with the api and you're ready to go

## Usage

```dart
ApiSettings settings = ApiSettings(apiKey: YOUR_API_KEY_HERE);
TripAdvisorApi tripAdvisorApi = TripAdvisorApi(settings);

tripAdvisorApi.nearbySearch.get(...)
tripAdvisorApi.findSearch.get(...)
tripAdvisorApi.locationDetails.get(...)
tripAdvisorApi.locationPhotos.get(...)
tripAdvisorApi.locationReviews.get(...)
```

## Additional information

You're always welcome to contribute on github. Still need to add the supported countries and supported currencies and add exception handling on http requests failures. Also More documentation is needed.
