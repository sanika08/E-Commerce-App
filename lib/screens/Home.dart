import 'package:ecommerce_app/components/popular_products.dart';
import 'package:flutter/material.dart';

import '../components/Categories.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 250,
                    height: 50,
                   decoration: BoxDecoration(
                     color: Colors.blueGrey.shade100.withOpacity(0.3),
                     borderRadius: BorderRadius.circular(15),
                   ),
                    child: TextField(
                      onChanged: (value){

                      },
                      decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        hintText: "Search",
                        prefixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                  Container(
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Icon(Icons.shopping_cart),
                       SizedBox(width: 15),
                       Icon(Icons.notifications),
                     ],
                     ),
                      ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 180,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: -20,
                    right: -20,
                    child:   Container(
                      height: 150,
                      child: PageView.builder(
                          controller: PageController(viewportFraction: 0.8),
                          itemCount: 4,
                          itemBuilder: (_, i)
                          {
                            return Container(
                              height: 100,
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: AssetImage("img/e1.jpg"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
                ],
              ),
            ),
            Categories(),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular Products",
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextButton(
                    onPressed: (){},
                    child: const Text(
                      "See All",
                      style: TextStyle(color: Colors.black54),
                    ),
                  ),
                ],
              ),
            ),
            PopularProducts(),
          ],
        ),
      ),
    );
  }
}


