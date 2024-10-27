import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas_slicing_starbhak_mart/components/component.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Components.loadAppbar(Icons.arrow_back_ios_sharp,
            () => Navigator.pop(context), Icons.person, () => {}),
        body:  Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: loadProductsList(productItems: [
                ["assets/monkey1.jpeg", "Burger bangor", "Rp. 45.000,00"],
                ["assets/monkey2.jpeg", "Teh bangor", "Rp. 45.000,00"],
                ["assets/monkey1.jpeg", "Burger bangor", "Rp. 45.000,00"],
                ["assets/monkey1.jpeg", "Pizza bangor", "Rp. 45.000,00"],
                ["assets/monkey1.jpeg", "Burger bangor", "Rp. 45.000,00"],
              ])),
          bottomNavigationBar: laodNavigationBar());
        
  }

  Widget loadProductsList(
      {List productItems = const [
        ["assets/monkey1.jpeg", "Burger king medium", "Rp. 50.000,00"],
        ["assets/monkey2.jpeg", "Teh botol", "Rp. 10.000,00"],
      ]}) {
    return Expanded(
      child: GridView.count(
        mainAxisSpacing: 12.0,
        crossAxisSpacing: 8.0,
        childAspectRatio: 3.0,
        crossAxisCount: 1,
        children: List.generate(productItems.length, (index) {
          return loadProductCard(productItems[index][0], productItems[index][1], productItems[index][2]);
        }),
      ),
    );
  }

  Widget loadProductCard(String image, String name, String price) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          child: Image(
            image: AssetImage(image),
            height: 200,
            width: 200,
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style:
                  GoogleFonts.inter(fontWeight: FontWeight.w600, fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              price,
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w600,
                fontSize: 12,
                textStyle: TextStyle(
                  color: Color(0xFF555555),
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(100)),
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
                    borderRadius: BorderRadius.all(Radius.circular(100)),
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
          icon: Icon(Icons.delete_outlined, color: Colors.redAccent, size: 40),
        ),
      ],
    );
  }

  Widget laodNavigationBar() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 40),
        height: 300,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                spreadRadius: 2,
                blurRadius: 4,
              )
            ]),
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
                          "Ringkasan Belanja",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 20),
                          ),
                        ),
                      )),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 5),
                          child: Text(
                            "PPN 11%",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.w300, fontSize: 16),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 5),
                          child: Text(
                            "Rp 10.000,00",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 16,
                                color: Color(0xFF555555),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total Belanja",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 16),
                          ),
                        ),
                        Text(
                          "Rp 94.000,00",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 16,
                              color: Color(0xFF555555),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 10,
                    color: Colors.black,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total Pembayaran",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                      ),
                      Text(
                        "Rp 104.000,00",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              height: 65,
              width: 300,
              child: TextButton(
                onPressed: () => {},
                child: Text("Checkout",
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    )),
                style: TextButton.styleFrom(
                  backgroundColor: const Color(0xFF3748E4),
                  foregroundColor: const Color.fromARGB(255, 16, 20, 53),
                ),
              ),
            ),
          ],
        ));
  }
}
