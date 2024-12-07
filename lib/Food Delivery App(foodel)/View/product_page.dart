import 'package:flutter/material.dart';
import 'package:flutter_food_app/Food%20Delivery%20App(foodel)/Model/product_model.dart';
import 'package:flutter_food_app/Food%20Delivery%20App(foodel)/Model/category_model.dart';
import 'package:flutter_food_app/Food%20Delivery%20App(foodel)/Widgets/product_item.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  List<MyProductModel> displayedProducts = myProductModel;
  String selectedCategory = "All";

  // Lọc theo category
  void _filterByCategory(String category) {
    setState(() {
      selectedCategory = category;
      if (category == "All") {
        // Check trường hợp nếu chọn All
        displayedProducts = myProductModel;
      } else {
        displayedProducts = myProductModel
            .where((product) => product.category == category)
            .toList();
      }
    });
  }

  // Tìm kiếm theo tên
  void _searchProducts(String query) {
    setState(() {
      displayedProducts = myProductModel
          .where((product) =>
              product.name.toLowerCase().contains(query.toLowerCase()) &&
              (selectedCategory == "All" ||
                  product.category == selectedCategory))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          onChanged: _searchProducts,
          decoration: const InputDecoration(
            hintText: "Tìm kiếm...",
            border: InputBorder.none,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: myCategories.length + 1,
              itemBuilder: (context, index) {
                final isAllCategory = index == 0;
                final categoryName =
                    isAllCategory ? "All" : myCategories[index - 1].name;

                return GestureDetector(
                  onTap: () => _filterByCategory(categoryName),
                  child: Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: selectedCategory == categoryName
                          ? Colors.black
                          : Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Row(
                      children: [
                        if (!isAllCategory)
                          Image.asset(
                            myCategories[index - 1].image,
                            height: 30,
                            width: 30,
                          ),
                        if (!isAllCategory) const SizedBox(width: 8),
                        Text(
                          categoryName,
                          style: TextStyle(
                            color: selectedCategory == categoryName
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                children: [
                  ...List.generate(
                    displayedProducts.length,
                    (index) => Padding(
                      padding: index == 0
                          ? const EdgeInsets.only(left: 25, right: 25)
                          : const EdgeInsets.only(right: 25),
                      child: ProductItem(
                        product: displayedProducts[index],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
