import 'package:geolocator/geolocator.dart';
//import 'package:http/http.dart';

class Location {
  double longitude;
  double latitude;

  Location({this.latitude, this.longitude});

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);

      latitude = position.latitude;

      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
