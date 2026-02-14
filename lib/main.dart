import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MapScreen(),
    );
  }
}

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  static const LatLng center = LatLng(55.7558, 37.6173);

  final List<Marker> markers = [
    const Marker(
      markerId: MarkerId("1"),
      position: LatLng(55.76, 37.61),
      infoWindow: InfoWindow(title: "Пансионат №1"),
    ),
    const Marker(
      markerId: MarkerId("2"),
      position: LatLng(55.74, 37.62),
      infoWindow: InfoWindow(title: "Пансионат №2"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ElderyCare Map")),
      body: GoogleMap(
        initialCameraPosition:
            const CameraPosition(target: center, zoom: 12),
        markers: Set.from(markers),
      ),
    );
  }
}
