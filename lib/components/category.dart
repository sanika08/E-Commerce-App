import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Categories extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "icons/flash.svg", "text": "Flash Deal"},
      {"icon": "icons/Bill Icon.svg", "text": "Bill"},
      {"icon": "icons/Gift Icon.svg", "text": "Daily Gift"},
      {"icon": "icons/Game Icon.svg", "text": "Game"},
      {"icon": "icons/Discover.svg", "text": "More"},
    ];

    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(categories.length, (index) =>
              CategoryCard(
                icon: categories[index]["icon"],
                text: categories[index]["text"],
                press: () {  }
              ),
          ),
        ],
      ),
    );
  }
}
    class CategoryCard extends StatelessWidget{

    const CategoryCard({
      required this.icon,
      required this.text,
      required this.press,
    });

    final String icon, text;
    final GestureTapCallback press;

    @override
    Widget build(BuildContext context){
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: 50,
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.deepOrangeAccent.shade100.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(15),
                  ),
                 child: SvgPicture.asset(icon),
              ),
             ),
              SizedBox(height: 5),
              Text(text, textAlign: TextAlign.center),
            ],
          ),
      ),
    );
  }
}
