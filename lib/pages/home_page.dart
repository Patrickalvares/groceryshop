import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceryshop/model/cart_model.dart';
import 'package:groceryshop/pages/cart_page.dart';
import 'package:provider/provider.dart';

import '../components/grocery_item_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return const CartPage();
            }),
          ),
          backgroundColor: Colors.black,
          child: const Icon(Icons.shopping_bag_outlined, color: Colors.white),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 48,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Text("Bom dia!"),
              ),
              const SizedBox(height: 4),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  "Vamos entregar produtos frescos para você",
                  style: GoogleFonts.notoSerif(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Divider(),
              ),
              const SizedBox(height: 24),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  "Itens Frescos",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Expanded(
                child: Consumer<CartModel>(
                  builder: ((context, value, child) {
                    return GridView.builder(
                      itemCount: value.shopItens.length,
                      padding: EdgeInsets.all(12),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2, childAspectRatio: 1 / 1.3),
                      itemBuilder: (context, index) {
                        return GroceryItemTile(
                          itemName: value.shopItens[index][0],
                          itemPrice: value.shopItens[index][1],
                          imagePath: value.shopItens[index][2],
                          color: value.shopItens[index][3],
                          onPressed: () {
                            Provider.of<CartModel>(context, listen: false)
                                .addItemToCart(index);
                          },
                        );
                      },
                    );
                  }),
                ),
              ),
            ],
          ),
        ));
  }
}
