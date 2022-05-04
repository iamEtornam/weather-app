import 'dart:math';

import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
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
            Column(
              children: const [
                WeatherDetailLabel(
                  label: 'Humidity',
                  value: '87%',
                )
              ],
            )
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
        const Text(
          'Humidity',
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        Text('${Random().nextInt(100)}%'),
      ],
    );
  }
}
