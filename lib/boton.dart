import 'package:flutter/material.dart';

class boton extends StatefulWidget {
  const boton({Key? key}) : super(key: key);

  @override
  State<boton> createState() => _botonState();
}

class _botonState extends State<boton> {
  double Slide = 50;
  int grupvalue = 0;
  bool isSwitch = false;
  bool isCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SliderTheme(
              data: SliderThemeData(
                activeTrackColor: Colors.indigo,
                inactiveTrackColor: Colors.grey,
                trackHeight: 2,
              ),
              child: Slider.adaptive(
                value: Slide,
                divisions: 50,
                min: 0,
                max: 50,
                label: "${Slide.toStringAsFixed(0)}",
                onChanged: (value) {
                  setState(() {
                    Slide = value;
                  });
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Switch.adaptive(
                activeColor: Colors.green,
                inactiveThumbColor: Colors.white,
                value: isSwitch,
                onChanged: (value) {
                  setState(() {
                    isSwitch = value;
                  });
                }),
            Checkbox(
              activeColor: Colors.green,
              value: isCheck,
              onChanged: (value) {
                setState(() {
                  isCheck = value!;
                });
              },
            ),
            Text("Gender"),
            Row(
              children: [
                Text('Male'),
                Radio(
                  value: 1,
                  groupValue: grupvalue,
                  onChanged: (int? value) {
                    setState(() {
                      grupvalue = value!;
                    });
                  },
                ),
              ],
            ),
            Row(
              children: [
                Text('Female'),
                Radio(
                  value: 2,
                  groupValue: grupvalue,
                  onChanged: (int? value) {
                    setState(() {
                      grupvalue = value!;
                    });
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
