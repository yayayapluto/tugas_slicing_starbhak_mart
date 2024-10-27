import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas_slicing_starbhak_mart/components/component.dart';
import 'package:tugas_slicing_starbhak_mart/screens/add.dart';
import 'package:tugas_slicing_starbhak_mart/screens/cart.dart';
import 'package:tugas_slicing_starbhak_mart/screens/trx.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0; // State variable for selected index

  void _onItemTapped(int index) {
    switch (index) {
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CartScreen()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => TrxScreen()),
        );
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: Components.loadAppbar(
        Icons.menu,
        () {},
        Icons.person,
        () {},
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 40, right: 40, bottom: 40, top: 15),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            loadCategoriesRow(),
            loadProductsGrid(), // Call the products grid method here
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.black54,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, size: 28),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart, size: 28),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.post_add_outlined, size: 30),
            label: 'Data',
          ),
        ],
        currentIndex: _selectedIndex, // Set current index
        onTap: _onItemTapped, // Handle tap
      ),
    );
  }

  Widget loadCategoriesRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        loadCategoryItem(
            color: Colors.blue,
            image: AssetImage("assets/monkey1.jpeg"),
            label: "All"),
        loadCategoryItem(
            color: Colors.white,
            image: AssetImage("assets/monkey2.jpeg"),
            label: "Food"),
        loadCategoryItem(
            color: Colors.white,
            image: AssetImage("assets/monkey3.jpeg"),
            label: "Drinks"),
      ],
    );
  }

  Widget loadCategoryItem({
    required Color color,
    required ImageProvider image,
    required String label,
  }) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(Radius.circular(30)),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                spreadRadius: 3,
                blurRadius: 5,
              ),
            ],
          ),
          padding: EdgeInsets.all(10),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: InkWell(
              onTap: () => {}, // Add your tap action here
              child: Image(
                image: image,
                height: 85,
                width: 85,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Text(
          label,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }

  Widget loadProductsGrid() {
    List<List> foodItems = [
      ["Burger King Medium", "50.000", "assets/monkey1.jpeg"],
      ["Teh Botol Seger", "70.000", "assets/monkey2.jpeg"],
      ["Sushi Set", "65.000", "assets/monkey1.jpeg"],
      ["Pasta Alfredo", "60.000", "assets/monkey1.jpeg"],
      ["Salad Bowl", "55.000", "assets/monkey1.jpeg"]
    ];

    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Text(
              "All Food",
              textAlign: TextAlign.left,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 0.75,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              children: List.generate(foodItems.length, (index) {
                return loadProductCard(
                  name: foodItems[index][0],
                  price: foodItems[index][1],
                  image: foodItems[index][2],
                );
              }),
            ),
          ),
        ],
      ),
    );
  }

  Widget loadProductCard({
    required String name,
    required String price,
    required String image,
  }) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(30)),
        boxShadow: [
          BoxShadow(color: Colors.black12, spreadRadius: 2, blurRadius: 5),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            child: Image(
              image: AssetImage(image),
              height: 250,
              width: 250,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 8),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              name,
              style: GoogleFonts.inter(fontWeight: FontWeight.w600),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                price,
                textAlign: TextAlign.left,
                style: GoogleFonts.inter(fontWeight: FontWeight.w600),
              ),
              InkWell(
                onTap: () => {}, // Add your onTap logic here
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                    color: Colors.green,
                  ),
                  child: Icon(Icons.add),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
