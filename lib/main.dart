import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:tugas_starbhak_mart/components.dart';
import 'package:tugas_starbhak_mart/cart.dart';

void main() {
  runApp(const Cart());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 100,
          scrolledUnderElevation: 0,
          backgroundColor: Colors.white,
          title: Container(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Components.makeButton(Icons.menu, () => {}),
                Components.makeButton(Icons.person_outline_outlined, () => {})
              ],
            ),
          ),
        ),
        body: Container(
          margin:
              const EdgeInsets.only(left: 40, right: 40, bottom: 40, top: 15),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              loadTripleButton(),
              loadAllFood(),
            ],
          ),
        ),
        bottomNavigationBar: loadBottomNavbar(context),
      ),
    );
  }

  Widget loadTripleButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          children: [
            Container(
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          spreadRadius: 3,
                          blurRadius: 15)
                    ]),
                padding: EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: InkWell(
                      onTap: () => {},
                      child: Image(
                        image: NetworkImage(
                            "https://i.pinimg.com/474x/fd/49/e3/fd49e36238f612556c911c26fe2b5039.jpg"),
                        height: 85,
                      )),
                )),
            Text("All")
          ],
        ),
        Column(
          children: [
            Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          spreadRadius: 3,
                          blurRadius: 15)
                    ]),
                padding: EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: InkWell(
                      onTap: () => {},
                      child: Image(
                        image: NetworkImage(
                            "https://i.pinimg.com/474x/fd/49/e3/fd49e36238f612556c911c26fe2b5039.jpg"),
                        height: 85,
                      )),
                )),
            Text("Makanan")
          ],
        ),
        Column(
          children: [
            Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          spreadRadius: 3,
                          blurRadius: 15)
                    ]),
                padding: EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: InkWell(
                      onTap: () => {},
                      child: Image(
                        image: NetworkImage(
                            "https://i.pinimg.com/474x/fd/49/e3/fd49e36238f612556c911c26fe2b5039.jpg"),
                        height: 85,
                      )),
                )),
            Text("Minuman")
          ],
        ),
      ],
    );
  }

  Widget loadAllFood(
      {List<List> foodItems = const [
        ["Burger King Medium", "50.000"],
        ["Pizza Margherita", "70.000"],
        ["Sushi Set", "65.000"],
        ["Pasta Alfredo", "60.000"],
        ["Salad Bowl", "55.000"]
      ]}) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "All Food",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 570,
            child: Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                children: List.generate(foodItems.length, (index) {
                  return Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 2,
                          blurRadius: 5
                        )
                      ]
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          child: Image(
                            image: NetworkImage(
                              "https://i.pinimg.com/474x/fd/49/e3/fd49e36238f612556c911c26fe2b5039.jpg",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 8),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(foodItems[index][0]),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              foodItems[index][1],
                              textAlign: TextAlign.left,
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100)),
                                color: Colors.green,
                              ),
                              child: Icon(Icons.add),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget loadBottomNavbar(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          boxShadow: [
            BoxShadow(color: Colors.black26, spreadRadius: 3, blurRadius: 10)
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              onPressed: () => {}, icon: Icon(Icons.home_filled, size: 35)),
          IconButton(
              onPressed: () => {},
              icon: Icon(Icons.shopping_cart_outlined, size: 35)),
          IconButton(
              onPressed: () => {},
              icon: Icon(Icons.post_add_outlined, size: 35)),
        ],
      ),
    );
  }
}
