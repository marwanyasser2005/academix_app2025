import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment Methods'),
        backgroundColor: Colors.red,
      ),
      body: ListView(
        children: [
          PaymentMethodItem(
            method: 'Credit Card',
            details: 'Visa ending in 1234',
          ),
          PaymentMethodItem(
            method: 'PayPal',
            details: 'example@email.com',
          ),
          // Add more PaymentMethodItem widgets as needed
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}

class PaymentMethodItem extends StatelessWidget {
  final String method;
  final String details;

  PaymentMethodItem({required this.method, required this.details});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(method),
      subtitle: Text(details),
    );
  }
}
