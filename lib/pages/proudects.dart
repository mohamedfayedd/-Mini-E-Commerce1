import 'package:app_2/widget/category.dart';
import 'package:app_2/widget/prodect_view.dart';
import 'package:flutter/material.dart';

class Proudects extends StatefulWidget {
  Proudects({super.key});

  @override
  State<Proudects> createState() => _ProudectsState();
}

class _ProudectsState extends State<Proudects> {
  int index = 0;

  int indexNavigaton = 0;

  List<Widget> pages = [];

  int selectedCategoryIndex = 0;

  void onCategorySelected(int index) {
    setState(() {
      selectedCategoryIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: TextField(
          decoration: InputDecoration(
              hintText: ' search',
              hintStyle: const TextStyle(fontSize: 18),
              prefix: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              )),
        ),
        actions: [
          PopupMenuButton(
              icon: const Icon(Icons.menu),
              itemBuilder: (context) =>
                  [const PopupMenuItem(child: Text('data'))])
        ],
      ),
      body: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                'categories',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Category(
                  onTap: () => onCategorySelected(index),
                  icon: const Icon(Icons.sports_baseball),
                ),
                Category(
                  onTap: () => onCategorySelected(index),
                  icon: const Icon(Icons.devices),
                ),
                Category(
                  onTap: () => onCategorySelected(index),
                  icon: const Icon(Icons.book),
                ),
                Category(
                  onTap: () => onCategorySelected(index),
                  icon: const Icon(Icons.local_mall),
                ),
              ],
            ),
            const SizedBox(
              height: 150,
            ),
            const Text(
              '  Best Seliing ',
              style: TextStyle(fontSize: 25),
              textAlign: TextAlign.left,
            ),
            Expanded(
              child: SizedBox(
                height: 900,
                child: ProductsGrid(),
              ),
            ),
            BottomNavigationBar(currentIndex: 1, iconSize: 27, items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: '*'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.maps_home_work_outlined), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.settings), label: '')
            ])
          ],
        ),
      ),
    );
  }
}
