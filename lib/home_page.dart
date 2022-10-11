import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int a = 0;
  int b = 0;
  List pic = [
    'assets/images/bread.png',
    'assets/images/grape (1).png',
    'assets/images/broccoli.png',
    'assets/images/milk.png',
    'assets/images/soda.png',
  ];
  List name = ['Bakery', 'Fruit', 'Vegetables', 'Milk', 'Drink'];
  List pic2 = [
    'assets/images/Lemon-removebg-preview.png',
    'assets/images/Banana-removebg-preview.png',
    'assets/images/Grape-removebg-preview.png',
    'assets/images/Orange-removebg-preview.png',
  ];
  List list1 = [
    'Lemon',
    'Banana',
    'Grape',
    'Orange',
  ];

  List list2 = [
    'Bergamo Italy',
    'Cattier italiano',
    'Cattier italiano',
    'Cattier italiano'
  ];

  List<Map<String, dynamic>> list3 = [
    {'price': '€1.10', 'bonus': '€2'},
    {'price': '€2.05', 'bonus': '€3'},
    {'price': '€3.15', 'bonus': '€4'},
    {'price': '€2', 'bonus': '€3.15'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Stack(
        children: [
          Column(
            children: [
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Icon(
                        Icons.menu,
                      ),
                      SizedBox(
                        width: 80,
                      ),
                      Text(
                        'EDEKA',
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 65,
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Image.asset(
                            'assets/images/share.png',
                            height: 18,
                            width: 15,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.favorite_border,
                          size: 18,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                          ),
                          hintText: 'Search product here',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          fillColor: Colors.grey.shade300,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/images/tune.png',
                          color: Colors.grey,
                          height: 35,
                          width: 35,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                height: 95,
                child: ListView.builder(
                  clipBehavior: Clip.none,
                  itemCount: 5,
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              a = index;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              color: a == index
                                  ? Colors.green.shade300
                                  : Colors.white,
                              border: Border.all(
                                  color: a == index
                                      ? Colors.transparent
                                      : Colors.grey,
                                  width: 0.5),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: Image.asset(
                                pic[index],
                                height: 40,
                                width: 40,
                                color: a == index ? Colors.white : Colors.grey,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          name[index],
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    );
                  },
                ),
              ),
              Expanded(
                child: GridView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 7),
                            decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 10, right: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            b = index;
                                          });
                                        },
                                        child: Icon(
                                          b == index
                                              ? Icons.favorite
                                              : Icons.favorite_border,
                                          color: b == index
                                              ? Colors.red
                                              : Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Center(
                                  child: Image.asset(
                                    pic2[index],
                                    height: 70,
                                    width: 70,
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Text(
                                    list1[index],
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 19,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Text(
                                    list2[index],
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Text(
                                        list3[index]['price'],
                                        style: TextStyle(
                                          color: Colors.green.shade300,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      list3[index]['bonus'],
                                      style: TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                        decorationThickness: 1.5,
                                        fontSize: 18,
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        color: Colors.green.shade300,
                                        borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(10),
                                          topLeft: Radius.circular(10),
                                        ),
                                      ),
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          index == 0 || index == 3
                              ? Container(
                                  height: 35,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15),
                                    ),
                                  ),
                                )
                              : SizedBox()
                        ],
                      ),
                    );
                  },
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 2 / 2.5),
                ),
              )
            ],
          ),
          Positioned(
            bottom: 10,
            left: 8,
            child: Container(
              height: 55,
              width: 345,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'Total:',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Text(
                    '3x €49.5',
                    style: TextStyle(
                        fontSize: 19,
                        color: Colors.black,
                        fontWeight: FontWeight.w400),
                  ),
                  Spacer(),
                  Container(
                    height: 55,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(5),
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      ),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'Cart',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.shopping_cart_outlined,
                          color: Colors.white,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
