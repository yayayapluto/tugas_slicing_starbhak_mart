import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas_slicing_starbhak_mart/components/component.dart';
import 'package:tugas_slicing_starbhak_mart/screens/add.dart';

class TrxScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Components.loadAppbar(Icons.arrow_back_ios_sharp,
            () => Navigator.pop(context), Icons.person, () => {}),
        body: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment
                .start, // Aligns all children to the start (left)
            children: [
              Container(
                color: Colors.white,
                margin: EdgeInsets.only(top: 50, left: 30),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddScreen()));
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
                      child: Text("Add Data +",
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            ),
                          )),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                margin:
                    EdgeInsets.only(top: 20, left: 30, right: 30, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10), // Add horizontal padding
                      child: Text("Foto",
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text("Nama Produk",
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text("Harga",
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text("Aksi",
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          )),
                    ),
                  ],
                ),
              ),
              makeDivider(),
              makeProductData(img: "assets/monkey1.jpeg"),
              makeDivider(),
              makeProductData(
                  img: "assets/monkey2.jpeg",
                  productName: "Teh Botol",
                  productPrice: "4000"),
              makeDivider(),
              makeProductData(img: "assets/monkey1.jpeg"),
              makeDivider(),
              makeProductData(
                  img: "assets/monkey1.jpeg", productName: "Burger gokil"),
              makeDivider(),
            ],
          ),
        ));
  }

  Widget makeProductData(
      {String img = "assets.monkey1.jpeg",
      String productName = "Burger King Medium",
      String productPrice = "Rp. 50.000,00"}) {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 35, right: 35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: ClipRRect(
              child: Image(
                image: AssetImage(img),
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(productName)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(productPrice),
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
    );
  }

  Widget makeDivider() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 0.5,
        color: Colors.black,
      ),
    );
  }
}
