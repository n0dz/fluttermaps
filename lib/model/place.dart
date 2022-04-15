import 'package:placesnearby/model/geometry.dart';

class Place {

  final Geometry? geometry;
  final String? name;
  final String? vicinity;

  Place({this.geometry, this.name, this.vicinity});

   // location, geometry, vicinity, name
  factory Place.fromJson(Map<String, dynamic> json) {
    return Place(
      geometry: Geometry.fromJson(json['geometry']),
      name: json['formatted_address'],
      vicinity: json['vicinity'],
    );
  }



}