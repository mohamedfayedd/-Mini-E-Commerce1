import 'package:flutter/material.dart';

class SingleProduct extends StatelessWidget {
  final String? imgProduct;
  final String? productName;
  final String? productDescription;
  final String? productPrice;

  const SingleProduct({
    super.key,
    this.imgProduct,
    this.productName,
    this.productDescription,
    this.productPrice,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 60,
                width: double.infinity,
                color: Colors.orange,
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(Icons.arrow_back)),
                    const SizedBox(
                      width: 100,
                    ),
                    Text(
                      productName!,
                      style: const TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            Image.asset(imgProduct!),
            const SizedBox(
              height: 30,
            ),
            Text(
              productName!,
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              productDescription!,
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              productPrice!,
              style: const TextStyle(fontSize: 20, color: Colors.orange),
            )
          ],
        ),
      ),
    );
  }
}
