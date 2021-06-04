import 'package:geolocator/geolocator.dart';

class Location {
  double latitude = 37.42342342342342;
  double longtitude = -122.08395287867832;

  Future<void> getLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);

      latitude = position.latitude;
      longtitude = position.longitude;
    } catch (e) {}
  }
}
