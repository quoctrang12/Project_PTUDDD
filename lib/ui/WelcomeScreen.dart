import 'package:flutter/material.dart';
import 'package:traveloka/model/location.dart';
import './location_manager.dart';

// const List<String> location = <String>['Vietnam', 'Australia', 'Mianmar'];

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    final locationManager = LocationsManager();

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        padding: const EdgeInsets.only(
          top: 90,
        ),
        child: SingleChildScrollView(
          child: Column(children: <Widget>[
            Image.asset('assets/images/logo.png', width: 90),
            const SizedBox(
              height: 35,
            ),
            const Text('Chao mung ban den voi Traveloka!',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    decorationThickness: 0,
                    color: Colors.black)),
            const SizedBox(
              height: 20,
            ),
            const Text('To continue, pick your conntry and language',
                style: TextStyle(
                    fontSize: 13, decorationThickness: 0, color: Colors.black)),
            const SizedBox(
              height: 40,
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              alignment: Alignment.topLeft,
              child: const Text(
                'Your Location',
                style: TextStyle(
                  fontSize: 13,
                  decorationThickness: 0,
                  color: Color.fromARGB(158, 0, 0, 0),
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: DropdownButton<String>(
                value: locationManager.items.first.name,
                items: locationManager.items
                    .map<DropdownMenuItem<String>>((Location value) {
                  return DropdownMenuItem<String>(
                    value: value.name,
                    child: Text(value.name),
                  );
                }).toList(),
                onChanged: (value) {},
                isExpanded: true,
              ),
            )
          ]),
        ),
      ),
    );
  }
}
