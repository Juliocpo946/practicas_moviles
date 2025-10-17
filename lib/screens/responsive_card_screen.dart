import 'package:flutter/material.dart';
import '../widgets/responsive_card.dart';

class ResponsiveCardScreen extends StatelessWidget {
  const ResponsiveCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1A1A),
      appBar: AppBar(
        title: const Text('Tarjeta Adaptable'),
        backgroundColor: const Color(0xFF1A1A1A),
      ),
      body: const Center(
        child: ResponsiveCard(
          imageUrl: 'https://media.istockphoto.com/id/177228186/es/foto/young-capibara.jpg?s=612x612&w=0&k=20&c=VTZGdHSxdEAqJqL5fS_1INkTC--AGhluPsx6b9sk1NA=',
          title: 'Tarjeta con Imagen y Texto',
        ),
      ),
    );
  }
}