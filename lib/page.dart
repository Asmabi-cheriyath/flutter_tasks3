import 'package:flutter/material.dart';

class Pages extends StatefulWidget {
  const Pages({super.key});

  @override
  State<Pages> createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  int selectedIndex = 0;
  List categories = [
    'Popular Categories',
    'Utensils',
    'Electrics',
    'Gadgets',
    'Groceries',
    'Cosmetics',
    'Jwellery',
    'Camera',
    'Suitcase',
    'Fan',
  ];

  List<Map<String, dynamic>> products = [
    {
      "image": "assets/146.jpeg",
      "productname": "Bangles",
      "offer": "12",
      "price": "1200"
    },
    {
      "image": "assets/147.jpeg",
      "productname": "Bag",
      "offer": "110",
      "price": "1200"
    },
    {
      "image": "assets/150.jpeg",
      "productname": "Bag",
      "offer": "15",
      "price": "1200"
    },
    {
      "image": "assets/151.jpeg",
      "productname": "Burger",
      "offer": "10",
      "price": "1200"
    },
    {
      "image": "assets/152.jpeg",
      "productname": "Bag",
      "offer": "19",
      "price": "1200"
    },
    {
      "image": "assets/153.jpeg",
      "productname": "Chain",
      "offer": "22",
      "price": "1200"
    },
    {
      "image": "assets/163.jpeg",
      "productname": "Headset",
      "offer": "34",
      "price": "1200"
    },
    {
      "image": "assets/150.jpeg",
      "productname": "Bag",
      "offer": "15",
      "price": "1200"
    },
    {
      "image": "assets/151.jpeg",
      "productname": "Burger",
      "offer": "10",
      "price": "1200"
    },
  ];

  NavigationRailLabelType labelType = NavigationRailLabelType.all;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SearchAnchor.bar(
                  suggestionsBuilder:
                      (BuildContext context, SearchController controller) {
                    return List.generate(
                      3,
                      (int index) {
                        return ListTile(
                          titleAlignment: ListTileTitleAlignment.center,
                          title: Text('Search $index'),
                        );
                      },
                    );
                  },
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: Row(
                  children: [
                    NavigationRail(
                        onDestinationSelected: (index) {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        labelType: labelType,
                        destinations: const [
                          NavigationRailDestination(
                              icon: Icon(Icons.fireplace),
                              label: Text("Popular ")),
                          NavigationRailDestination(
                              icon: Icon(Icons.flatware_outlined),
                              label: Text("Utensils")),
                          NavigationRailDestination(
                              icon: Icon(Icons.electrical_services),
                              label: Text("electrics")),
                          NavigationRailDestination(
                              icon: Icon(Icons.mobile_screen_share),
                              label: Text("Gadgets")),
                          NavigationRailDestination(
                              icon: Icon(Icons.local_grocery_store),
                              label: Text("Groceries")),
                          NavigationRailDestination(
                              icon: Icon(Icons.local_convenience_store_sharp),
                              label: Text("Cosmetics")),
                          NavigationRailDestination(
                              icon: Icon(Icons.diamond),
                              label: Text("Jweller")),
                          NavigationRailDestination(
                              icon: Icon(Icons.add_a_photo_rounded),
                              label: Text("Camera")),
                          NavigationRailDestination(
                              icon: Icon(Icons.work_outlined),
                              label: Text("suitcase")),
                          NavigationRailDestination(
                              icon: Icon(Icons.wind_power_rounded),
                              label: Text("Fan")),
                        ],
                        selectedIndex: selectedIndex),
                    const VerticalDivider(
                      thickness: 2,
                    ),
                    // Expanded(
                    //     child: Column(
                    //         mainAxisAlignment: MainAxisAlignment.center,
                    //         children: [
                    //       Text(
                    //         categories[selectedIndex],
                    //         style: const TextStyle(
                    //             fontSize: 35, fontWeight: FontWeight.w800),
                    //       ),
                    //     ])),

                    // Container(
                    //   height: 300,
                    //   child: GridView.count(
                    //     crossAxisCount: 2,
                    //     crossAxisSpacing: 20,
                    //     mainAxisSpacing: 20,
                    //     children: [
                    //       ListView.builder(itemBuilder: (context, index) {
                    //         return GridView.count(crossAxisCount: 2);
                    //       })
                    //     ],
                    //   ),
                    // )

                    SizedBox(
                      height: 800,
                      width: 200,
                      child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 20,
                                  mainAxisSpacing: 20),
                          itemCount: products.length,
                          itemBuilder: (context, index) {
                            return Container(
                              decoration: BoxDecoration(boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(3.0, 10.0),
                                    blurRadius: 5.0,
                                    spreadRadius: 4.0),
                                BoxShadow(
                                    color: Colors.white,
                                    offset: Offset(0.0, 0.0),
                                    blurRadius: 0.0,
                                    spreadRadius: 0.0),
                              ]),
                              child: Column(
                                children: [
                                  Container(
                                    height: 50,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                      image:
                                          AssetImage(products[index]['image']),
                                    )),
                                  ),
                                  Text(products[index]['productname']),
                                  Text(products[index]['price'])
                                ],
                              ),
                            );
                          }),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar:
          BottomNavigationBar(type: BottomNavigationBarType.fixed, items: [
        const BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
        const BottomNavigationBarItem(
            label: "Blog", icon: Icon(Icons.read_more_outlined)),
        BottomNavigationBarItem(
            label: "Category",
            icon: IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Pages()));
                },
                icon: const Icon(Icons.category_outlined))),
        const BottomNavigationBarItem(
            label: "Cart", icon: Icon(Icons.shopping_cart_outlined)),
        const BottomNavigationBarItem(
            label: "Account", icon: Icon(Icons.account_box_outlined))
      ]),
    );
  }
}
