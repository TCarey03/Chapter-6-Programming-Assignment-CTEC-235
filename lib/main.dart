```dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const TravelDashboardApp());
}

// Data model for a travel destination
class Destination {
  String name;
  IconData icon;

  Destination({
    required this.name,
    required this.icon,
  });
}

// Data model for a travel deal
class TravelDeal {
  String title;
  double price;
  String description;
  bool isPremium;

  TravelDeal({
    required this.title,
    required this.price,
    required this.description,
    required this.isPremium,
  });
}

class TravelDashboardApp extends StatelessWidget {
  const TravelDashboardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Universal Travel Dashboard',
      theme: ThemeData(
        brightness: Brightness.light,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
        textTheme: GoogleFonts.robotoTextTheme(
          const TextTheme(
            displayLarge: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
            titleLarge: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            bodyMedium: TextStyle(
              fontSize: 16,
            ),
          ),
        ),
      ),
      home: const TravelHomePage(),
    );
  }
}

class TravelHomePage extends StatelessWidget {
  const TravelHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Destination destination = Destination(
      name: 'Paris',
      icon: Icons.flight,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Universal Travel Dashboard'),
      ),
      body: Center(
        child: Text(
          destination.name,
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
    );
  }
}
```
