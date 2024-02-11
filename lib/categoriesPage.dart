// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:new_project/headerWidget.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({Key? key});

  @override
  State<CategoriesPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 20, 120, 186),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.grey),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu, color: Colors.grey),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message, color: Colors.grey),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.grey),
            label: "",
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: HeaderWidget(),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Categories",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                          ),
                          Icon(Icons.more_horiz),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Wrap(
                        spacing: 12,
                        runSpacing: 12,
                        children: [
                          _buildCategoryItem("Relationship", const Color.fromARGB(255, 185, 73, 247)),
                          _buildCategoryItem("Career", const Color.fromARGB(255, 0, 162, 228)),
                          _buildCategoryItem("Education", const Color.fromARGB(255, 255, 125, 81)),
                          _buildCategoryItem("Other", const Color.fromARGB(255, 255, 62, 121)),
                        ],
                      ),
                    ],

                  ),
                ),
              ),

            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryItem(String categoryName, Color color) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.4, 
      child: Card(
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
          child: Center(
            child: Text(
              categoryName,
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
