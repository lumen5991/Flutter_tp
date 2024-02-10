// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  get onPressed => null;

myContainer() {
  return Container(
    height: 150,
    width: 250,
    decoration: BoxDecoration(
      color: Colors.pink,
      borderRadius: BorderRadius.circular(20),
      boxShadow: const [
        BoxShadow(
          color: Colors.red,
          blurRadius: 5,
          spreadRadius: 5,
          offset: Offset(-10, 20),
        ),
      ],
    ),
    padding: const EdgeInsets.all(20),
    child: const Text("data", style: TextStyle(color: Colors.white)),
  );
}



  myContainer2() {
    return Container(
      color: Colors.orange,
      height: 30,
      width: 200,
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          const Icon(
            Icons.info,
            color: Colors.white,
          ),
          const Text(
            "Compaign infos",
            style: TextStyle(color: Colors.white),
          ),
          const Text(
            "read more",
            style: TextStyle(color: Colors.white),
          ),
          IconButton(
              onPressed: () {
                debugPrint("Mes pages suivantes");
              },
              icon: const Icon(Icons.arrow_circle_left_rounded))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(225, 121, 59, 49),
          title: const Text(
            "Ecole 229",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  debugPrint("Mes notifs");
                },
                icon: const Icon(Icons.notifications)),
            IconButton(
                onPressed: () {
                  debugPrint("Mes notifs");
                },
                icon: const Icon(Icons.person))
          ],
        ),
        drawer: Drawer(
            child: ListView(
          children: const [ 
            Text("data"),
            Text("data"),
          ],
        )),
        body: Column(
          children: [
            Text("Ma première application fluttter"),
            Icon(Icons.wallet, size: 150),
        
            myContainer2(),
          ],
        ));
  }
}
