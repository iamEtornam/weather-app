import 'dart:math';

import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final pages = [], currentIndex = 1;

  _handleIndexChanged(int index){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              const SizedBox(height: 35),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.location_on),
                  Text(
                    'ACCRA',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Text('${DateTime.now()}'),
              const SizedBox(height: 56),
              Card(
                elevation: 2,
                shadowColor: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            '23°',
                            style: TextStyle(
                              fontSize: 65,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'Real Feel: 23',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Icon(Icons.sunny_snowing, size: 65),
                          Text(
                            'Sunny',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: Column(
                  children: [
                    WeatherDetailLabel(
                      label: 'Humidity',
                      value: '${Random().nextInt(100)}%',
                    ),
                    const SizedBox(height: 15),
                    const WeatherDetailLabel(
                      label: 'UV index',
                      value: '',
                    ),
                    const SizedBox(height: 15),
                    const WeatherDetailLabel(
                      label: 'Wind Speed',
                      value: '5.00 mph',
                    ),
                    const SizedBox(height: 15),
                    WeatherDetailLabel(
                      label: 'Rain probability',
                      value: '${Random().nextInt(100)}%',
                    ),
                    const SizedBox(height: 15),
                    const WeatherDetailLabel(
                      label: 'Pressure',
                      value: '1023.6 Pa',
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: DotNavigationBar(
          marginR: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          currentIndex: currentIndex,
          dotIndicatorColor: Colors.white,
          unselectedItemColor: Colors.grey[300],
          selectedItemColor: const Color(0xFF8A9DFF),
          // enableFloatingNavBar: false,
          onTap: _handleIndexChanged,
          items: [
            /// Weather
            DotNavigationBarItem(
              icon: Column(
                children: const [
                  Icon(Icons.cloud),
                  Text('Weather', style: TextStyle(fontSize: 12))
                ],
              ),
            ),

            /// Places
            DotNavigationBarItem(
              icon: Column(
                children: const [
                  Icon(Icons.location_on),
                  Text('Places', style: TextStyle(fontSize: 12))
                ],
              ),
            ),

            /// News
            DotNavigationBarItem(
              icon: Column(
                children: const [
                  Icon(Icons.newspaper_outlined),
                  Text('News', style: TextStyle(fontSize: 12))
                ],
              ),
            ),

            /// Preference
            DotNavigationBarItem(
              icon: Column(
                children: const [
                  Icon(Icons.person),
                  Text('Preference', style: TextStyle(fontSize: 12))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WeatherDetailLabel extends StatelessWidget {
  const WeatherDetailLabel({
    Key? key,
    required this.label,
    required this.value,
  }) : super(key: key);

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            color: Color.fromARGB(255, 103, 103, 103)
          ),
        ),
        Text(value),
      ],
    );
  }
}
