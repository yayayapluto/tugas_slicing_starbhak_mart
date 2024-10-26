import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:tugas_starbhak_mart/components.dart';
import 'package:tugas_starbhak_mart/cart.dart';


class Tsx extends StatelessWidget {
  const Tsx({super.key});

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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Components.makeButton(Icons.arrow_back, () => {}),
                  Components.makeButton(Icons.person_outline_outlined, () => {})
                ],
              ),
            ),
          ),
          body: Column(
        
        crossAxisAlignment:CrossAxisAlignment.start, // Aligns all children to the start (left)
        children: [
        Container(
          color: Colors.white,
          margin: EdgeInsets.only(top: 50, left: 30),
          child: InkWell(
            onTap: () {
              // Add your tap action here
            },
            child: Container(
              height: 40,
              width: 110,
              decoration: BoxDecoration(
                color: const Color(0xFF3748E4),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 3,
                  ),
                ],
              ),
              child: Center(
                // Center the text inside the button
                child: Text(
                  "Add Data +",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          ),
          SizedBox(height: 20),
          
          Container(
            margin: EdgeInsets.only(top: 20, left: 30, right: 30, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10), // Add horizontal padding
                  child: Text("Foto"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text("Nama Produk"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text("Harga"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text("Aksi"),
                ),
              ],
            ),
          ),

          Container(
            padding: const EdgeInsets.symmetric(
                horizontal: 40), 
            margin: const EdgeInsets.symmetric(
                vertical: 10), 
            child: Container(
              height: 0.5, 
              color: Colors.black, 
            ),
          ),


          Container(
            margin: EdgeInsets.only(top: 20, left: 35, right: 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15), 
                  child:  ClipRRect(
                    child: Image(
                      image: NetworkImage(
                        "https://i.pinimg.com/474x/fd/49/e3/fd49e36238f612556c911c26fe2b5039.jpg",
                      ),
                      height: 100,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text("Burger King Medium"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text("Rp.50.000,00"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.delete_outlined,
                        color: Colors.redAccent, size: 40),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
                horizontal: 40), 
            margin: const EdgeInsets.symmetric(
                vertical: 10), 
            child: Container(
              height: 0.5, 
              color: Colors.black, 
            ),
          ),


          Container(
            margin: EdgeInsets.only(top: 20, left: 35, right: 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15), 
                  child:  ClipRRect(
                    child: Image(
                      image: NetworkImage(
                        "https://i.pinimg.com/474x/fd/49/e3/fd49e36238f612556c911c26fe2b5039.jpg",
                      ),
                      height: 100,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text("Burger King Medium"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text("Rp.50.000,00"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.delete_outlined,
                        color: Colors.redAccent, size: 40),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
                horizontal: 40), 
            margin: const EdgeInsets.symmetric(
                vertical: 10), 
            child: Container(
              height: 0.5, 
              color: Colors.black, 
            ),
          ),


          Container(
            margin: EdgeInsets.only(top: 20, left: 35, right: 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15), 
                  child:  ClipRRect(
                    child: Image(
                      image: NetworkImage(
                        "https://i.pinimg.com/474x/fd/49/e3/fd49e36238f612556c911c26fe2b5039.jpg",
                      ),
                      height: 100,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text("Burger King Medium"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text("Rp.50.000,00"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.delete_outlined,
                        color: Colors.redAccent, size: 40),
                  ),
                ),
              ],
            ),
          ),

        ],
      ),

        )
      );
  }
}
