import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView(
      clipBehavior: Clip.antiAlias,
      padding:  EdgeInsets.symmetric(vertical: 15),
      scrollDirection:  Axis.vertical,
      children:[
        const Text('Categories',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black87
          ),
        ),

        SizedBox(height: 10),

        SizedBox(
          height: 100,
          child: GridView.builder(
            padding: EdgeInsets.symmetric(horizontal: 10),
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (context, index){
              return Container(color: Colors.amber.shade400);
            },
          ),
        ),
        Divider(
          // endIndent: 10,
          height: 20,
          // indent: 11,
          thickness: 3,
          color: Colors.black38,
        ),
        SizedBox(height: 20),
        const Text('Products',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black87
          ),
        ),
        SizedBox(height: 10),
        //*******************************
        SizedBox(
          child: GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 4,
            padding: EdgeInsets.all(10),
            scrollDirection: Axis.vertical,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,

            ),
            itemBuilder: (context, index){
              return Container(

                color: index % 2 == 0 ? Colors.pink : Colors.black87,
              );
            },
          ),
        ),
        SizedBox(height: 20),
        const Text('Products',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black87
          ),
        ),
        //***********************
        ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 4,
            padding: EdgeInsets.symmetric(horizontal: 10),
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return Container(
                height: 100,
                margin: EdgeInsets.only(bottom: 10),
                color: index % 2 == 0 ? Colors.cyan :
                Colors.deepOrangeAccent,
              );
            }

        )
      ],
    );
  }
}
