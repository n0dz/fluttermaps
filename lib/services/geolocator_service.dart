import 'package:geolocator/geolocator.dart';

class GeoLocatorService {

  Future<Position> getCurrentLocation() async {
    LocationPermission permission;
    permission = await Geolocator.checkPermission();
    try {
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.deniedForever) {
          return Future.error('Location Not Available');
        }
      }
    } catch(err){
      print(err);
      rethrow;
    }

    Position position = await Geolocator.getCurrentPosition(
    desiredAccuracy: LocationAccuracy.high);

    return position;

  }

}
