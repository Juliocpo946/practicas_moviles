import 'package:flutter/material.dart';
import '../widgets/responsive_card.dart';

class ResponsiveCardScreen extends StatelessWidget {
  final String message;

  const ResponsiveCardScreen({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    const String imageUrl = 'https://media.istockphoto.com/id/177228186/es/foto/young-capibara.jpg?s=612x612&w=0&k=20&c=VTZGdHSxdEAqJqL5fS_1INkTC--AGhluPsx6b9sk1NA=';
    const String title = 'Capibara';

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text(
          'Tarjeta Adaptable',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        elevation: 2,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  message,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 20),
                const ResponsiveCard(
                  imageUrl: imageUrl,
                  title: title,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}