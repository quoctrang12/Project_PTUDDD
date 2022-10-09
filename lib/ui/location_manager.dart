import 'package:traveloka/model/location.dart';

class LocationsManager {
  final List<Location> _items = [
    Location(icon: 'Icon(Icons.android)', name: 'Vietnam'),
    Location(icon: 'Icon(Icons.android)', name: 'Australia'),
    Location(icon: 'Icon(Icons.android)', name: 'Canada'),
    Location(icon: 'Icon(Icons.android)', name: 'American'),
  ];

  List<Location> get items {
    return [..._items];
  }
}
