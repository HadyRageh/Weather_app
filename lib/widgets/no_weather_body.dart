import 'package:flutter/material.dart';

class noWeatherBody extends StatelessWidget {
  const noWeatherBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text('there is no weather 😔 start',
              style: TextStyle(
                fontSize: 24,
              )),
          Text(
            'searching now 🔍',
            style: TextStyle(
              fontSize: 24,
            ),
          ),
        ],
      ),
    );
  }
}
