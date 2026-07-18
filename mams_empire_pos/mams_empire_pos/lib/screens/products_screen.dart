import 'package:flutter/material.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  final List<Map<String, String>> products = [];

  final nameController = TextEditingController();
  final priceController = TextEditingController();
  final stockController = TextEditingController();

  void addProduct() {
    if (nameController.text.isEmpty ||
        priceController.text.isEmpty ||
        stockController.text.isEmpty) {
      return;
    }

    setState(() {
      products.add({
        "name": nameController.text,
        "price": priceController.text,
        "stock": stockController.text,
      });

      nameController.clear();
      priceController.clear();
      stockController.clear();
    });

    Navigator.pop(context);
  }

  void showAddProductDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Add Product"),
          content: SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    labelText: "Product Name",
                  ),
                ),
                TextField(
                  controller: priceController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: "Price (₺)",
                  ),
                ),
                TextField(
                  controller: stockController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: "Stock",
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Cancel"),
            ),
            ElevatedButton(
              onPressed: addProduct,
              child: const Text("Save"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Products"),
        backgroundColor: Colors.green,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: showAddProductDialog,
        child: const Icon(Icons.add),
      ),
      body: products.isEmpty
          ? const Center(
              child: Text(
                "No products added yet.",
                style: TextStyle(fontSize: 18),
              ),
            )
          : ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];

                return ListTile(
                  leading: const Icon(
                    Icons.shopping_bag,
                    color: Colors.green,
                  ),
                  title: Text(product["name"]!),
                  subtitle: Text("₺${product["price"]}"),
                  trailing: Text("Stock: ${product["stock"]}"),
                );
              },
            ),
    );
  }
}