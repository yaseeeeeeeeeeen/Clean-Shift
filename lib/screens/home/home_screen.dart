import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 240, 240, 240),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Row(children: [
                  Expanded(child: Text("406, Skyline Park Dale, MM Road....")),
                  Icon(Icons.keyboard_arrow_down),
                  Icon(Icons.shopping_cart_checkout)
                ]),
                Container(
                  height: screenSize.height / 4,
                  width: screenSize.width,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: AssetImage("assets/images/banner_image.png"))),
                ),
                TextField(
                  decoration: InputDecoration(
                    suffixIcon: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: ColoredBox(
                          color: Colors.green.withOpacity(0.7),
                          child: const Icon(
                            Icons.search,
                            color: Colors.white,
                          )),
                    ),
                    hintText: 'Search for a service',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  padding: EdgeInsets.all(15),
                  height: screenSize.height / 3,
                  width: screenSize.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      Text(
                        "Available Services",
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        child: GridView.builder(
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            crossAxisSpacing: 8,
                            mainAxisSpacing: 8,
                          ),
                          itemBuilder: (context, index) {
                            if (index == 7) {
                              return const Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.black,
                                    child: Center(
                                      child: Icon(
                                        Icons.arrow_right_alt_sharp,
                                        color: Colors.white,
                                        size: 40,
                                      ),
                                    ),
                                  ),
                                  Text("See All")
                                ],
                              );
                            } else {
                              final catogary = [
                                "Cleaning",
                                "Waste Disposal",
                                "Plumbing",
                                "Plumbing",
                                "Cleaning",
                                "Waste Disposal",
                                "Plumbing"
                              ];
                              return Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const CircleAvatar(
                                    backgroundColor: Colors.yellow,
                                  ),
                                  Text(catogary[index],
                                      style: const TextStyle(fontSize: 12))
                                ],
                              );
                            }
                          },
                          itemCount: 8,
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/services');
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(16),
                  ),
                  child: const Text('See All Services'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
