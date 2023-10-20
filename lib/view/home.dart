// ignore_for_file: unused_local_variable, invalid_use_of_protected_member
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_map_getx/controller/map.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatelessWidget {
  final MapController controller = Get.put(MapController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Google Maps with GetX'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: GoogleMap(
                initialCameraPosition: CameraPosition(
                  target: LatLng(2.0469, 45.3182),
                  zoom: 14.0,
                ),
                markers: controller.markers.value.toSet(),
                onTap: (LatLng position) {
                  controller.addMarker(position);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
