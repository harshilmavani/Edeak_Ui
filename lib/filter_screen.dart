import 'package:flutter/material.dart';

class Filterscreen extends StatefulWidget {
  const Filterscreen({Key? key}) : super(key: key);

  @override
  State<Filterscreen> createState() => _FilterscreenState();
}

class _FilterscreenState extends State<Filterscreen> {
  List<Map<String, dynamic>> items = [
    {'icon': Icons.delivery_dining, 'text': "Fast Delivery"},
    {'icon': Icons.location_on_outlined, 'text': "Stores in my area"},
    {'icon': Icons.list_alt, 'text': "Previous Orders"},
    {'icon': Icons.star_border, 'text': "Popular Orders"},
  ];

  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.arrow_back_ios,
            ),
            Column(
              children: List.generate(
                items.length,
                (index) => ListTile(
                  onTap: () {
                    setState(() {
                      selected = index;
                    });
                  },
                  leading: CircleAvatar(
                    radius: 23,
                    child: Icon(
                      items[index]['icon'],
                      color: Colors.green,
                    ),
                    backgroundColor: Colors.green.shade100,
                  ),
                  title: Text(items[index]['text']),
                  trailing: Container(
                    height: 23,
                    width: 23,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: selected == index
                                ? Colors.transparent
                                : Colors.grey),
                        color: selected == index
                            ? Colors.green
                            : Colors.transparent,
                        shape: BoxShape.circle),
                    child: Icon(
                      Icons.check,
                      size: 13,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
