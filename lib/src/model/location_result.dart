import 'package:google_maps_flutter/google_maps_flutter.dart';

/// The result returned after completing location selection.
class LocationResult {
  /// The human readable name of the location. This is primarily the
  /// name of the road. But in cases where the place was selected from Nearby
  /// places list, we use the <b>name</b> provided on the list item.
  String address; // or road

  /// Latitude/Longitude of the selected location.
  LatLng latLng;

  Map<String, dynamic> addresses;

  LocationResult({this.latLng, this.address, this.addresses});

  copyWith({LatLng latLng, String address, Map<String, dynamic> addresses}) {
    return LocationResult(
      latLng: latLng ?? this.latLng,
      address: address ?? this.address,
      addresses: addresses ?? this.addresses,
    );
  }

  @override
  String toString() {
    return 'LocationResult{address: $address, latLng: $latLng}';
  }
}
