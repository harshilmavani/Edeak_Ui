import 'package:flutter/material.dart';

class Demo extends StatefulWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  double sliderValue = 200;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SliderTheme(
            data: SliderThemeData(
                activeTrackColor: Colors.yellow,
                inactiveTrackColor: Colors.grey,
                thumbColor: Colors.white,
                trackHeight: 2),
            child: Slider(
              value: sliderValue,
              divisions: 200,
              label: '${sliderValue.toStringAsFixed(0)}',
              min: 0,
              max: 200,
              onChanged: (value) {
                setState(() {
                  sliderValue = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
