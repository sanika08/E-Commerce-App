import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            color: Colors.blue.shade100,
            padding: EdgeInsets.all(15),
            child: Row(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back,size: 30,color: Colors.indigoAccent),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
