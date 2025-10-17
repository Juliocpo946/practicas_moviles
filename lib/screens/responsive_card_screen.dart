import 'package:flutter/material.dart';
import '../widgets/responsive_card.dart';

class ResponsiveCardScreen extends StatelessWidget {
  const ResponsiveCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text(
          'Tarjeta Adaptable',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        elevation: 2,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
            child: const ResponsiveCard(
              imageUrl: 'https://media.istockphoto.com/id/177228186/es/foto/young-capibara.jpg?s=612x612&w=0&k=20&c=VTZGdHSxdEAqJqL5fS_1INkTC--AGhluPsx6b9sk1NA=',
              title: 'Capibara',
            ),
          ),
        ),
      ),
    );
  }
}