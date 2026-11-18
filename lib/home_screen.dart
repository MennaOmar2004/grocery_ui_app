import 'package:flutter/material.dart';
import 'package:grocery_app/widgets/grocery_container_widget.dart';
import 'package:grocery_app/widgets/item_container_widget.dart';
import 'package:grocery_app/widgets/section_name_widget.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.71),
            child: Column(
              children: [
                Image.asset("assets/group.png", width: 20.88, height: 23.78),
          
                SizedBox(height: 8),
          
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.location_on, color: Color(0xff4C4F4D)),
                    Text(
                      " Dhaka, Banassre",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff4C4F4D),
                      ),
                    ),
                  ],
                ),
          
                SizedBox(height: 20),
          
                TextFormField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    hintText: "Search Store",
                    helperStyle: TextStyle(
                      fontSize: 14,
                      color: Color(0xff7C7C7C),
                      fontWeight: FontWeight.w600,
                    ),
                    prefixIcon: Icon(Icons.search, color: Colors.black),
                    filled: true,
                    fillColor: Color(0xffF2F3F2),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
          
                SizedBox(height: 30),
          
                SectionName(title: "Exclusive Offer",),
          
                SizedBox(height: 20),
          
                SizedBox(
                  height: 260,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return ItemContainer(image: "assets/banana.png",title: "Organic Bananas",supTitle: "7pcs, Priceg",price:"\$4.99",);
                    },
                    separatorBuilder: (context, index) => SizedBox(width: 15,),
                    itemCount: 10,
                  ),
                ),
          
                SizedBox(height: 30),
          
                SectionName(title: "Best Selling",),
          
                SizedBox(height: 20),
          
                SizedBox(
                  height: 260,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return ItemContainer(image: "assets/pepper.png",title: "Organic Bananas",supTitle: "7pcs, Priceg",price:"\$4.99",);
                    },
                    separatorBuilder: (context, index) => SizedBox(width: 15,),
                    itemCount: 10,
                  ),
                ),

                SizedBox(height: 30),
          
                SectionName(title: "Groceries",),
          
                SizedBox(height: 20),

                SizedBox(
                  height: 100,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return  GroceryContainer();
                    },
                    separatorBuilder: (context, index) => SizedBox(width: 15,),
                    itemCount: 10,
                  ),
                ),

                SizedBox(height: 20),
          
                SizedBox(
                  height: 260,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return ItemContainer(image: "assets/pngfuel.png",title: "Beef Bone",supTitle: "1kg, Priceg",price:  "\$4.99",);
                    },
                    separatorBuilder: (context, index) => SizedBox(width: 15,),
                    itemCount: 10,
                  ),
                ),

               
              ],
            ),
          ),
        ),
      ),

      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xff53B175),
          unselectedItemColor: Colors.black,
          backgroundColor: Colors.white,
          selectedFontSize: 11,
          unselectedFontSize: 11,
          iconSize: 21,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.storefront), label: "Shop"),
             BottomNavigationBarItem(icon: Icon(Icons.search_rounded), label: "Explore"),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), label: "cart"),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: "Favourite",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
          ],
        ),
      ),
    );
  }
}




