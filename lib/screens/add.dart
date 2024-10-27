import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas_slicing_starbhak_mart/components/component.dart';

class AddScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Components.loadAppbar(Icons.arrow_back_ios_sharp,
            () => Navigator.pop(context), Icons.person, () => {}),
            body: Container(
            color: Colors.white,
            child: Column(
              children: [
                makeInputText("Nama Produk", "masukkan nama produk"),
                makeInputText("Harga Produk", "masukkan harga"),
                makeInputText("Kategori Produk", "masukkan kategori"),
                makeInputText("Gambar Produk", "masukkan gambar produk"),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  height: 65,
                  width: 300,
                  child: TextButton(
                    onPressed: () => {},
                    child: Text("Submit",
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
            ),
          ));
  }

  Widget makeInputText(String title, String placeholder) {
    return Container(
      margin: EdgeInsets.only(bottom: 10, top: 20),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: placeholder,
                  hintStyle: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 16,
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
