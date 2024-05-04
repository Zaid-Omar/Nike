import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Entity/Cart.dart';

class CartShop extends StatelessWidget {
  const CartShop({super.key});

  @override
  Widget build(BuildContext context) {
    // Using Consumer to listen to Cart changes
    return Consumer<Cart>(
      builder: (context, cart, child) {
        return Scaffold(
          body: cart.getUserCart().isEmpty
              ? Center(child: Text("Your cart is empty"))
              : ListView.builder(
            itemCount: cart.getUserCart().length,
            itemBuilder: (context, index) {
              // Display each item as a ListTile
              return ListTile(
                leading: Image.asset(cart.getUserCart()[index].imagePath, width: 50, height: 50), // Displays the image
                title: Text(cart.getUserCart()[index].name),  // Displays the name of the Schuhe
                subtitle: Text('Price: ${cart.getUserCart()[index].preis}'), // Optionally display the price
                trailing: IconButton(
                  icon: const Icon(Icons.delete,color: Colors.red,),
                  onPressed: () {
                    // Remove item from cart when icon is tapped
                    cart.removeItemFromCart(cart.getUserCart()[index]);
                  },
                ),
              );

            },
          ),
          backgroundColor: Colors.grey[300],
        );
      },
    );
  }
}
