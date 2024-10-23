import 'package:flutter/material.dart';

class Ditales extends StatelessWidget {
  final String imgProduct;
  final String productName;
  final String productDescription;
  final String productPrice;

  const Ditales({
    super.key,
    required this.imgProduct,
    required this.productName,
    required this.productDescription,
    required this.productPrice,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: const EdgeInsets.all(60),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 60,
              width: 350,
              color: Colors.orange,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(Icons.arrow_back)),
                  Text(
                    productName,
                    style: const TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
          Image.asset(
            imgProduct,
            fit: BoxFit.contain,
            height: 300,
            width: double.maxFinite,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              productName,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              productDescription,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              productPrice,
              style: const TextStyle(
                color: Colors.orangeAccent,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
