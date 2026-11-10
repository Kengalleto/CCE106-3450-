
import 'package:flutter/material.dart';

const Color primaryBlue = Color(0xFF2878D0);
const Color lightBlue = Color(0xFFE8F3FF);
const Color pageBackground = Color(0xFFF5F7FA);
const Color darkText = Color(0xFF202B3C);
const Color grayText = Color(0xFF7A8493);

// MAIN SHOPPING CART PAGE
class ShoppingCartPage extends StatelessWidget {
  const ShoppingCartPage({super.key});

  void showMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pageBackground,

      // APP BAR
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: darkText),
          onPressed: () {
            debugPrint('Back clicked');
            showMessage(context, 'Back clicked');
          },
        ),
        title: const Text(
          'My Cart',
          style: TextStyle(
            color: darkText,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint('Cart clicked');
              showMessage(context, 'Cart clicked');
            },
            icon: Stack(
              clipBehavior: Clip.none,
              children: [
                const Icon(
                  Icons.shopping_bag_outlined,
                  color: darkText,
                  size: 27,
                ),
                Positioned(
                  right: -7,
                  top: -7,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: const BoxDecoration(
                      color: primaryBlue,
                      shape: BoxShape.circle,
                    ),
                    child: const Text(
                      '3',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),
        ],
      ),

      // SCROLLABLE BODY
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // INTRODUCTION
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 13,
                vertical: 7,
              ),
              decoration: BoxDecoration(
                color: lightBlue,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                'CAMPUS STORE',
                style: TextStyle(
                  color: primaryBlue,
                  fontWeight: FontWeight.bold,
                  fontSize: 11,
                  letterSpacing: 1,
                ),
              ),
            ),

            const SizedBox(height: 14),

            const Text(
              'Ready for checkout',
              style: TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.bold,
                color: darkText,
              ),
            ),

            const SizedBox(height: 6),

            const Text(
              'Review your items before placing your order.',
              style: TextStyle(
                fontSize: 13,
                color: grayText,
              ),
            ),

            const SizedBox(height: 22),

            // DELIVERY INFORMATION
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(11),
                    decoration: BoxDecoration(
                      color: lightBlue,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(
                      Icons.location_on_outlined,
                      color: primaryBlue,
                      size: 25,
                    ),
                  ),

                  const SizedBox(width: 12),

                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Deliver to Your Full Name',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: darkText,
                            fontSize: 13,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Matina, Davao City',
                          style: TextStyle(
                            color: grayText,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),

                  TextButton(
                    onPressed: () {
                      debugPrint(
                        'Change delivery address clicked',
                      );
                      showMessage(
                        context,
                        'Change delivery address clicked',
                      );
                    },
                    child: const Text(
                      'Change',
                      style: TextStyle(
                        color: primaryBlue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            // ORDER ITEMS HEADING
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Order Items',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: darkText,
                  ),
                ),
                const Text(
                  '3 items',
                  style: TextStyle(
                    color: grayText,
                    fontSize: 13,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),

            // PRODUCT 1
            const CartItemCard(
              productName: 'Wireless Mouse',
              price: 'PHP 450.00',
              quantity: 1,
              icon: Icons.mouse_outlined,
            ),

            const SizedBox(height: 12),

            // PRODUCT 2
            const CartItemCard(
              productName: 'USB-C Hub',
              price: 'PHP 850.00',
              quantity: 1,
              icon: Icons.usb,
            ),

            const SizedBox(height: 12),

            // PRODUCT 3
            const CartItemCard(
              productName: 'Laptop Stand',
              price: 'PHP 700.00',
              quantity: 1,
              icon: Icons.laptop_mac,
            ),

            const SizedBox(height: 20),

            // DISCOUNT BANNER
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: lightBlue,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.local_offer_outlined,
                    color: primaryBlue,
                    size: 25,
                  ),

                  const SizedBox(width: 12),

                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'STUDENT10 applied',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: darkText,
                            fontSize: 13,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '10% discount on items',
                          style: TextStyle(
                            color: grayText,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const Icon(
                    Icons.check_circle,
                    color: primaryBlue,
                    size: 23,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 22),

            // PAYMENT SUMMARY
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const Text(
                    'Payment Summary',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: darkText,
                    ),
                  ),

                  const SizedBox(height: 20),

                  summaryRow(
                    'Subtotal',
                    'PHP 2,000.00',
                  ),

                  const SizedBox(height: 14),

                  summaryRow(
                    'Discount (10%)',
                    '− PHP 200.00',
                    amountColor: Colors.green,
                  ),

                  const SizedBox(height: 14),

                  summaryRow(
                    'Delivery Fee',
                    'PHP 50.00',
                  ),

                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: Divider(
                      color: Color(0xFFE5E9EF),
                    ),
                  ),

                  summaryRow(
                    'Total',
                    'PHP 1,850.00',
                    bold: true,
                    amountColor: primaryBlue,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // PLACE ORDER BUTTON
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                onPressed: () {
                  debugPrint(
                    'Place order clicked! Total: PHP 1850.00',
                  );

                  showMessage(
                    context,
                    'Place order clicked! Total: PHP 1850.00',
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryBlue,
                  foregroundColor: Colors.white,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13),
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.lock_outline, size: 19),
                    SizedBox(width: 10),
                    Text(
                      'Place Order',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }

  // REUSABLE SUMMARY ROW
  static Widget summaryRow(
    String label,
    String amount, {
    bool bold = false,
    Color? amountColor,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            color: bold ? darkText : grayText,
            fontSize: 13,
            fontWeight: bold
                ? FontWeight.bold
                : FontWeight.normal,
          ),
        ),
        Text(
          amount,
          style: TextStyle(
            color: amountColor ?? darkText,
            fontSize: bold ? 16 : 13,
            fontWeight: bold
                ? FontWeight.bold
                : FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

// REUSABLE CART ITEM CARD
class CartItemCard extends StatelessWidget {
  final String productName;
  final String price;
  final int quantity;
  final IconData icon;

  const CartItemCard({
    super.key,
    required this.productName,
    required this.price,
    required this.quantity,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [

          // PRODUCT ICON
          Container(
            width: 57,
            height: 57,
            decoration: BoxDecoration(
              color: lightBlue,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              icon,
              color: primaryBlue,
              size: 29,
            ),
          ),

          const SizedBox(width: 12),

          // PRODUCT DETAILS
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productName,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                    color: darkText,
                  ),
                ),

                const SizedBox(height: 6),

                Text(
                  price,
                  style: const TextStyle(
                    color: primaryBlue,
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),

                const SizedBox(height: 9),

                // QUANTITY BUTTONS
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [

                    // MINUS BUTTON
                    quantityButton(
                      Icons.remove,
                      () {
                        debugPrint(
                          'Decrease quantity: $productName',
                        );

                        showItemMessage(
                          context,
                          'Decrease quantity: $productName',
                        );
                      },
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 13,
                      ),
                      child: Text(
                        '$quantity',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                    ),

                    // PLUS BUTTON
                    quantityButton(
                      Icons.add,
                      () {
                        debugPrint(
                          'Increase quantity: $productName',
                        );

                        showItemMessage(
                          context,
                          'Increase quantity: $productName',
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),

          // DELETE BUTTON
          IconButton(
            onPressed: () {
              debugPrint('Remove item: $productName');

              showItemMessage(
                context,
                'Remove item: $productName',
              );
            },
            icon: const Icon(
              Icons.delete_outline,
              color: Colors.redAccent,
              size: 22,
            ),
          ),
        ],
      ),
    );
  }

  // REUSABLE QUANTITY BUTTON
  Widget quantityButton(
    IconData icon,
    VoidCallback onPressed,
  ) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(7),
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          color: lightBlue,
          borderRadius: BorderRadius.circular(7),
        ),
        child: Icon(
          icon,
          size: 17,
          color: primaryBlue,
        ),
      ),
    );
  }

  // SHOW PRODUCT BUTTON MESSAGE
  void showItemMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 2),
      ),
    );
  }
}
