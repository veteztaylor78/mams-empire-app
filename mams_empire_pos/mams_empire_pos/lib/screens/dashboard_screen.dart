import 'products_screen.dart';

import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          "MAMS Empire POS",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Card(
              elevation: 4,
              child: ListTile(
                leading: const Icon(
                  Icons.attach_money,
                  color: Colors.green,
                  size: 40,
                ),
                title: const Text(
                  "Today's Sales",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: const Text(
                  "₺0.00",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.green,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                children: [
                  menuCard(context, Icons.shopping_bag, "Products"),
                  menuCard(context, Icons.point_of_sale, "Sales"),
                  menuCard(context, Icons.inventory, "Inventory"),
                  menuCard(context, Icons.people, "Customers"),
                  menuCard(context, Icons.bar_chart, "Reports"),
                  menuCard(context, Icons.settings, "Settings"),                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget menuCard(BuildContext context, IconData icon, String title) {
    return Card(
      elevation: 5,
      child: InkWell(
        onTap: () {
  if (title == "Products") {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => const ProductsScreen(),
      ),
    );
  }
},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 50,
              color: Colors.green,
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}