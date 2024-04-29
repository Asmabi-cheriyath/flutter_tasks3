import 'package:flutter/material.dart';
import 'package:flutter_tasks3/page.dart';

class Task3 extends StatefulWidget {
  const Task3({super.key});

  @override
  State<Task3> createState() => _Task3State();
}

class _Task3State extends State<Task3> {
  List<Map<String, dynamic>> products = [
    {"image": "assets/146.jpeg", "productname": "Bangles", "offer":"12","price": "1200"},
    {"image": "assets/147.jpeg", "productname": "Bag", "offer":"110","price": "1200"},
    {"image": "assets/150.jpeg", "productname": "Bag", "offer":"15","price": "1200"},
    {"image": "assets/151.jpeg", "productname": "Burger", "offer":"10","price": "1200"},
    {"image": "assets/152.jpeg", "productname": "Bag", "offer":"19","price": "1200"},
    {"image": "assets/153.jpeg", "productname": "Chain", "offer":"22","price": "1200"},
    {"image": "assets/163.jpeg", "productname": "Headset", "offer":"34","price": "1200"},
    {"image": "assets/147.jpeg", "productname": "Bag", "offer":"50","price": "1200"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  SearchAnchor.bar(
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
        backgroundColor: Colors.red,
        actions: const [
          Icon(
            Icons.favorite,
            color: Colors.white,
          ),
          Icon(
            Icons.shopping_bag_rounded,
            color: Colors.white,
          ),
          Icon(
            Icons.notifications,
            color: Colors.white,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 120,
                      width: 165,
                      child: Image(
                        image: AssetImage("assets/556.jpeg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      height: 120,
                      width: 165,
                      child: Image(
                        image: AssetImage("assets/159.jpeg"),
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  children: [
                    SizedBox(
                        height: 120,
                        width: 165,
                        child: Image(
                          image: AssetImage("assets/157.jpeg"),
                          fit: BoxFit.cover,
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                        height: 120,
                        width: 165,
                        child: Image(
                          image: AssetImage("assets/155.jpeg"),
                          fit: BoxFit.cover,
                        ))
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Special For You",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                      ),
                      Text(
                        "More",
                        style: TextStyle(color: Colors.red),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 180,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                            decoration: const BoxDecoration(boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(1.0, 5.0),
                                blurRadius: 5.0,
                                spreadRadius: 4.0,
                              ),
                              BoxShadow(
                                  color: Colors.white,
                                  offset: Offset(2.0, 0.0),
                                  blurRadius: 0.0,
                                  spreadRadius: 4.0),
                              BoxShadow(
                                  color: Colors.white,
                                  offset: Offset(1.0, 15.0),
                                  blurRadius: 0.0,
                                  spreadRadius: 2.0),
                              BoxShadow(
                                  color: Colors.white,
                                  offset: Offset(2.0, 0.0),
                                  blurRadius: 0.0,
                                  spreadRadius: 0.0)
                            ]),
                            width: 100,
                            
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image(
                                    height: 100,
                                    image: AssetImage(products[index]['image'])),
                                Text(
                                  products[index]['productname'],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(alignment: Alignment.center,height: 25,width: 30,color: Colors.red,child: Text(products[index]['offer']),),
                                Text(products[index]['price'])
                              ],
                            ));
                      },
                      separatorBuilder: (context, index) => const SizedBox(
                            width: 20,
                          ),
                      itemCount: 8),
                ),
                const SizedBox(height: 10,),
                Container(
                  color: Colors.orange,
                  // height: MediaQuery.of(context).size.height,
                  // width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Our Best Seller",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17),
                            ),
                            Text(
                              "More",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        const Text(
                          "Brought by Many People",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 150,
                          child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return SizedBox(
                                  width: 100,
                                  height: 200,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Image(
                                          image:
                                              AssetImage(products[index]['image'])),
                                      Text(products[index]['productname']),
                                      Container(
                                        child: Text(products[index]['price']),
                                      )
                                    ],
                                  ),
                                );
                              },
                              separatorBuilder: (context, index) => const SizedBox(
                                    width: 10,
                                  ),
                              itemCount: 5),
                        )
                            
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items:  [
            const BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
            const BottomNavigationBarItem(
                label: "Blog", icon: Icon(Icons.read_more_outlined)),
            BottomNavigationBarItem(
                label: "Category", icon: IconButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Pages()));}, icon: const Icon(Icons.category_outlined))),
            const BottomNavigationBarItem(
                label: "Cart", icon: Icon(Icons.shopping_cart_outlined)),
            const BottomNavigationBarItem(
                label: "Account", icon: Icon(Icons.account_box_outlined))
          ]),
    );
  }
}
