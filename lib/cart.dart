import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:tugas_starbhak_mart/components.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            toolbarHeight: 100,
            scrolledUnderElevation: 0,
            backgroundColor: Colors.white,
            title: Container(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Components.makeButton(Icons.arrow_back, () => {}),
                  Text("Cart",
                  style: TextStyle(
                    fontWeight: FontWeight.w700
                  ),
                  ),
                  Components.makeButton(Icons.person_outline_outlined, () => {})
                ],
              ),
            ),
          ),
          body: Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Expanded(
              child: GridView.count(
                mainAxisSpacing: 12.0,
                crossAxisSpacing: 8.0,
                childAspectRatio: 3.0,
                crossAxisCount: 1,
                children: List.generate(5, (i) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        child: Image(
                          image: NetworkImage(
                            "https://i.pinimg.com/474x/fd/49/e3/fd49e36238f612556c911c26fe2b5039.jpg",
                          ),
                          height: 200,
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Burger king medium"),
                          SizedBox(height: 10),
                          Text("Rp. 50.000,00"),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black26,
                                      spreadRadius: 2,
                                      blurRadius: 5,
                                    ),
                                  ],
                                ),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.remove),
                                  iconSize: 20, // Smaller icon size
                                ),
                              ),
                              SizedBox(width: 10), // Spacing between buttons
                              Text("1"),
                              SizedBox(width: 10), // Spacing between buttons
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black26,
                                      spreadRadius: 2,
                                      blurRadius: 5,
                                    ),
                                  ],
                                ),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.add),
                                  iconSize: 20, // Smaller icon size
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.delete_outlined,
                            color: Colors.redAccent, size: 40),
                      ),
                    ],
                  );
                }),
              ),
            ),
          ),
          bottomNavigationBar: Container(
            padding: EdgeInsets.symmetric(vertical: 40),
            color: Colors.white,
            height: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          margin: EdgeInsets.only(bottom: 5),
                          child: Text(
                              " Ringkasan Belanja",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                        ) 
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 5),
                            child: Text(" PPN 11%"),
                          ),
                          Container(
                          margin: EdgeInsets.only(bottom: 5),
                          child: Text("Rp 10.000,00"),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(" Total Belanja"),
                          Text("Rp 94.000,00"),
                        ],
                      ),
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 8.8),
                          height: 0.5, // Set the height for the line thickness
                          color: Colors.black, // Set the line color
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Total Pembayaran",
                          style: TextStyle(
                            fontWeight: FontWeight.w700
                          ),
                          ),
                          Text("Rp 104.000,00",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                          ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () => {},
                  child: Container(
                    height: 65,
                    width: 300,
                    decoration: BoxDecoration(
                        color: const Color(0xFF3748E4),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.blue,
                              spreadRadius: 1,
                              blurRadius: 3)
                        ]),
                    child: Center(
                      child: Text("Checkout",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
