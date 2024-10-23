import 'package:app_2/pages/single_product.dart';
import 'package:flutter/material.dart';

class ProductsGrid extends StatelessWidget {
  ProductsGrid({super.key});
  List<Map> products1 = [
    {
      'img': 'assets/image/image1.jpg',
      'title': 'product 1',
      'des': 'description ...',
      'price': '340\$'
    },
    {
      'img': 'assets/image/image2.jpg',
      'title': 'product 2',
      'des': 'description ...',
      'price': '340\$'
    },
    {
      'img': 'assets/image/image3.jpg',
      'title': 'product 3',
      'des': 'description ...',
      'price': '340\$'
    },
    {
      'img': 'assets/image/image4.jpg',
      'title': 'product 4',
      'des': 'description ...',
      'price': '340\$'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: products1.length,
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 15,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SingleProduct(
                    imgProduct: products1[index]['img'],
                    productName: products1[index]['title'],
                    productDescription: products1[index]['des'],
                    productPrice: products1[index]['price'],
                  ),
                ),
              );
            },
            child: Card(
              elevation: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Image.asset(
                      products1[index]['img'],
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      products1[index]['title'],
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      products1[index]['des'],
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      products1[index]['price'],
                      style: const TextStyle(
                        color: Colors.orangeAccent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
