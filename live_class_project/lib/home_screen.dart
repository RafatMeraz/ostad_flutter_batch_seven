import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late GoogleMapController googleMapController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Map Screen'),
      ),
      body: GoogleMap(
        mapType: MapType.satellite,
        initialCameraPosition: const CameraPosition(
          zoom: 16,
          target: LatLng(
            23.800507141895935,
            90.3722262378507,
          ),
        ),
        onTap: (LatLng? latLng) {
          print(latLng);
        },
        zoomControlsEnabled: true,
        zoomGesturesEnabled: true,
        onMapCreated: (GoogleMapController controller) {
          googleMapController = controller;
        },
        trafficEnabled: true,
        markers: <Marker>{
          const Marker(
            markerId: MarkerId('initial-position'),
            position: LatLng(
              23.800507141895935,
              90.3722262378507,
            ),
          ),
          Marker(
              markerId: const MarkerId('home'),
              position: const LatLng(23.79873710772054, 90.36999430507421),
              infoWindow: InfoWindow(
                  title: 'Home',
                  onTap: () {
                    print('On tapped home');
                  }),
              icon: BitmapDescriptor.defaultMarkerWithHue(
                BitmapDescriptor.hueBlue,
              ),
              draggable: true,
              onDragStart: (LatLng onStartLatLng) {
                print('On start drag $onStartLatLng');
              },
              onDragEnd: (LatLng onStopLatLng) {
                print('On end drag $onStopLatLng');
              })
        },
        circles: <Circle>{
          Circle(
              circleId: const CircleId('dengue-circle'),
              fillColor: Colors.red.withOpacity(0.3),
              center: const LatLng(23.799863244921745, 90.37016429007053),
              radius: 300,
              strokeColor: Colors.blue,
              strokeWidth: 1,
              visible: true,
              onTap: () {
                print('Entered into dengue zone');
              }),
          Circle(
              circleId: const CircleId('blue-circle'),
              fillColor: Colors.blue.withOpacity(0.3),
              center: const LatLng(23.79357104678576, 90.37165727466345),
              radius: 800,
              strokeColor: Colors.blue,
              strokeWidth: 1,
              visible: true,
              onTap: () {
                print('Entered into dengue zone');
              }),
        },
        polylines: <Polyline>{
          const Polyline(
              polylineId: PolylineId('random'),
              color: Colors.amber,
              width: 4,
              jointType: JointType.round,
              points: <LatLng>[
                LatLng(23.79409502479623, 90.3570295125246),
                LatLng(23.788140632707165, 90.36082182079554),
                LatLng(23.780215029962257, 90.36286599934101)
              ])
        },
        polygons: <Polygon>{
          Polygon(
              polygonId: const PolygonId('poly-id'),
              fillColor: Colors.pink.withOpacity(0.4),
              strokeColor: Colors.black,
              strokeWidth: 2,
              points: const <LatLng>[
                LatLng(23.77624299621742, 90.35490285605192),
                LatLng(23.766188109400485, 90.35159468650818),
                LatLng(23.760750414607198, 90.35569779574871),
                LatLng(23.76167527755416, 90.36588918417692),
                LatLng(23.771157658684977, 90.36988265812397),
              ])
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          googleMapController.animateCamera(
            CameraUpdate.newCameraPosition(
              const CameraPosition(
                zoom: 16,
                target: LatLng(
                  23.800507141895935,
                  90.3722262378507,
                ),
              ),
            ),
          );
        },
        child: const Icon(Icons.location_history),
      ),
    );
  }
}
