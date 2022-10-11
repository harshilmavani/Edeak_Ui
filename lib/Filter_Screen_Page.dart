import 'package:flutter/material.dart';

class FilterScreenPage extends StatefulWidget {
  const FilterScreenPage({Key? key}) : super(key: key);

  @override
  State<FilterScreenPage> createState() => _FilterScreenPageState();
}

class _FilterScreenPageState extends State<FilterScreenPage> {
  List<Map<String, dynamic>> name1 = [
    {'Icon': Icons.delivery_dining, 'text': "Fast Delivery"},
    {'Icon': Icons.location_on_outlined, 'text': "Stores in my area"},
    {'Icon': Icons.list_alt, 'text': "Previous Orders"},
    {'Icon': Icons.star_border, 'text': "Popular Orders"},
  ];
  List<Map<String, dynamic>> name3 = [
    {'Icons': Icons.check, 'texts': "Delivery"},
    {'Icons': Icons.check, 'texts': "Pick up"},
  ];
  int name2 = 0;
  int a = 0;
  double Set = 100;
  double Set2 = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black38,
                  ),
                  SizedBox(
                    width: 120,
                  ),
                  Text(
                    'Filter',
                    style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: List.generate(
                name1.length,
                (index) => Column(
                  children: [
                    ListTile(
                      onTap: () {
                        setState(() {
                          a = index;
                        });
                      },
                      leading: CircleAvatar(
                        backgroundColor: Colors.green.shade50,
                        radius: 23,
                        child: Icon(
                          name1[index]['Icon'],
                          color: Colors.green,
                        ),
                      ),
                      title: Text(
                        name1[index]['text'],
                      ),
                      trailing: Container(
                        height: 28,
                        width: 28,
                        decoration: BoxDecoration(
                          color: a == index ? Colors.green : Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: a == index ? Colors.white : Colors.grey,
                          ),
                        ),
                        child: Icon(
                          Icons.check,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Divider(
                        color: Colors.grey.shade300,
                        thickness: 1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "MIN ORDER AMOUNT",
                style: TextStyle(
                  color: Colors.grey.shade500,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SliderTheme(
              data: SliderThemeData(
                trackHeight: 1,
              ),
              child: Slider.adaptive(
                value: Set,
                activeColor: Colors.green,
                max: 100,
                min: 0,
                divisions: 100,
                onChanged: (value) {
                  setState(() {
                    Set = value;
                  });
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Divider(
                color: Colors.grey.shade300,
                thickness: 1,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "MIN ORDER AMOUNT",
                style: TextStyle(
                  color: Colors.grey.shade500,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SliderTheme(
              data: SliderThemeData(
                trackHeight: 2,
                thumbColor: Colors.white,
              ),
              child: Slider.adaptive(
                min: 0,
                max: 100,
                divisions: 4,
                activeColor: Colors.green,
                value: Set2,
                onChanged: (value) {
                  setState(() {
                    Set2 = value;
                  });
                },
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 80,
                ),
                Text(
                  '0.5-2km',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  width: 35,
                ),
                Text(
                  '3-5km',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                Text(
                  '6-8km',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                Text(
                  '9-10km',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Divider(
                color: Colors.grey.shade300,
                thickness: 1,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "ORDER TYPE",
                style: TextStyle(
                  color: Colors.grey.shade500,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  2,
                  (index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        name2 = index;
                      });
                    },
                    child: Container(
                      height: 45,
                      width: 150,
                      decoration: BoxDecoration(
                        color: name2 == index
                            ? Colors.green
                            : Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            name3[index]['texts'],
                            style: TextStyle(
                              color:
                                  name2 == index ? Colors.white : Colors.grey,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Container(
                            height: 21,
                            width: 21,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color:
                                    name2 == index ? Colors.white : Colors.grey,
                                width: 1,
                              ),
                              color: name2 == index
                                  ? Colors.white
                                  : Colors.transparent,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              name3[index]['Icons'],
                              color: name2 == index
                                  ? Colors.green
                                  : Colors.transparent,
                              size: 13,
                            ),
                          )
                        ],
                      ),
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
