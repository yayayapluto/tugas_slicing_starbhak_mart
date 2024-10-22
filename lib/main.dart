import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            margin: const EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                loadTopButton(),
                loadTripleButton(),
                loadAllFood(),
              ],
            ),
          ),
          bottomNavigationBar: loadBottomNavbar(),
        ),
    );
  }

  Widget loadTopButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(100)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.black12, spreadRadius: 1, blurRadius: 15),
              ]),
          child: const Icon(Icons.menu),
        ),
        Container(
          padding: const EdgeInsets.all(15),
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(100)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.black12, spreadRadius: 1, blurRadius: 15),
              ]),
          child: const Icon(Icons.person_outline_outlined),
        ),
      ],
    );
  }

  Widget loadTripleButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          spreadRadius: 5,
                          blurRadius: 15)
                    ]),
                padding: EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Image(
                    image: NetworkImage(
                        "https://i.pinimg.com/474x/fd/49/e3/fd49e36238f612556c911c26fe2b5039.jpg"),
                    height: 85,
                  ),
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
                          spreadRadius: 5,
                          blurRadius: 15)
                    ]),
                padding: EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Image(
                    image: NetworkImage(
                        "https://i.pinimg.com/474x/fd/49/e3/fd49e36238f612556c911c26fe2b5039.jpg"),
                    height: 85,
                  ),
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
                          spreadRadius: 5,
                          blurRadius: 15)
                    ]),
                padding: EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Image(
                    image: NetworkImage(
                        "https://i.pinimg.com/474x/fd/49/e3/fd49e36238f612556c911c26fe2b5039.jpg"),
                    height: 85,
                  ),
                )),
            Text("Minuman")
          ],
        ),
      ],
    );
  }

  Widget loadAllFood() {
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
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.8,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        spreadRadius: 5,
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  padding: EdgeInsets.all(15),
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
                        child: Text("Burger King Medium"),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Rp. 50.000,00",
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
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget loadBottomNavbar() {
    return Container(
      padding: EdgeInsets.all(25),
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
          Icon(Icons.home, size: 35),
          Icon(Icons.shopping_cart, size: 35),
          Icon(
            Icons.post_add_outlined,
            size: 35,
          ),
        ],
      ),
    );
  }
}
