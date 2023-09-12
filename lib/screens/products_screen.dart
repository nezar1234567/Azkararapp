import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  GridView.builder(
    scrollDirection: Axis.vertical,
    itemCount: 11,
    physics: const AlwaysScrollableScrollPhysics(),
    padding:const EdgeInsets.all(10),
    shrinkWrap: true,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    mainAxisSpacing: 10,
    crossAxisSpacing: 10,
    // mainAxisExtent: 100,
    childAspectRatio: 140/220

    ),
    itemBuilder: (context, index) {
    return Container(
    alignment: AlignmentDirectional.center,
    decoration: BoxDecoration(
    color: index % 2 == 0 ? Colors.black87 : Colors.amber.shade500,
    borderRadius: BorderRadius.circular(10),
    ),
    child: Text('Container #$index',
    style: TextStyle(
    color: Colors.white,
    fontSize: 33
    ),
    ),
    );

    },
    );
  }
}
// body: GridView(
//   scrollDirection: Axis.vertical,
//   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//     crossAxisCount: 2,
//
//   ),
//   children: [
//     Container(color: Colors.pink.shade100),
//     Container(color: Colors.cyan.shade100),
//     Container(color: Colors.red.shade100),
//     Container(color: Colors.amber.shade100),
//
//
//     Container(color: Colors.pink.shade100),
//     Container(color: Colors.cyan.shade100),
//     Container(color: Colors.red.shade100),
//     Container(color: Colors.amber.shade100),
//
//     Container(color: Colors.pink.shade100),
//     Container(color: Colors.cyan.shade100),
//     Container(color: Colors.red.shade100),
//     Container(color: Colors.amber.shade100),