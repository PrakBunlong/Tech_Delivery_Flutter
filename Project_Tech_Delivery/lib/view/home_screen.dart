import 'package:demo2/model/category_model.dart';
import 'package:demo2/model/product_model.dart';
import 'package:flutter/material.dart';

import '../widget/category_item.dart';
import '../widget/header_app.dart';
import '../widget/product_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      body: ListView(
        children: [
          const HeaderApp(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 221, 220, 220),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment
                      .center, // Center the children horizontally
                  children: [
                    Icon(Icons.search),
                    SizedBox(width: 10),
                    Text(
                      'Search the entire shop',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 170, 239, 239),
                ),
                child: const Row(
                  children: [
                    SizedBox(width: 5),
                    Text(
                      'Delivery is 50% cheaper',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment
                  .start, // Aligns children to the start (left in LTR, right in RTL)
              children: [
                Text(
                  'Category',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for (int i = 0; i < listCategory.length; i++)
                        CategoryItem(
                          model: listCategory[i],
                        )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0).add(
              EdgeInsets.only(
                left: 8,
                top: 20,
                right: 8,
              ),
            ),
            child: GestureDetector(
              onTap: () {
                // Handle button click here
                print('Button Clicked');
              },
              child: Row(
                children: [
                  Text(
                    'Flash Sale',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.arrow_forward),
                ],
              ),
            ),
          ),
          // ...
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20),
            child: SizedBox(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 15,
                shrinkWrap: true,
                primary: false,
                childAspectRatio: 1 / 1.8,
                children: listProduct
                    .map((product) => ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: productItem(context, product),
                        ))
                    .toList(),
              ),
            ),
          ),
// ...
        ],
      ),
    );
  }
}
