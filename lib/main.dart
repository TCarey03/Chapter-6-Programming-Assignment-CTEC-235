import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const TravelDashboardApp());
}

// --------------------
// Data Models
// --------------------

class Destination {
  String name;
  IconData icon;

  Destination({
    required this.name,
    required this.icon,
  });
}

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

// --------------------
// Main App
// --------------------

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

// --------------------
// Main Page
// --------------------

class TravelHomePage extends StatelessWidget {
  const TravelHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Centralized navigation data
    final List<Destination> destinations = [
      Destination(
        name: 'Home',
        icon: Icons.home,
      ),
      Destination(
        name: 'Explore',
        icon: Icons.explore,
      ),
      Destination(
        name: 'Bookings',
        icon: Icons.book_online,
      ),
      Destination(
        name: 'Profile',
        icon: Icons.person,
      ),
    ];

    // Measure the width of the window
    final double width = MediaQuery.sizeOf(context).width;

    // Branch based on window size
    if (width < 600) {
      return MobileLayout(destinations: destinations);
    } else {
      return DesktopLayout(destinations: destinations);
    }
  }
}

// --------------------
// Mobile Layout
// --------------------

class MobileLayout extends StatelessWidget {
  final List<Destination> destinations;

  const MobileLayout({
    super.key,
    required this.destinations,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> navItems = [];

    for (Destination destination in destinations) {
      navItems.add(
        Expanded(
          child: ListTile(
            leading: Icon(destination.icon),
            onTap: () {},
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Travel Dashboard'),
      ),

      body: Center(
        child: Text(
          'Mobile Layout',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: navItems,
        ),
      ),
    );
  }
}

// --------------------
// Desktop Layout
// --------------------

class DesktopLayout extends StatelessWidget {
  final List<Destination> destinations;

  const DesktopLayout({
    super.key,
    required this.destinations,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> navItems = [];

    for (Destination destination in destinations) {
      navItems.add(
        ListTile(
          leading: Icon(destination.icon),
          title: Text(destination.name),
          onTap: () {},
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Travel Dashboard'),
      ),

      body: Row(
        children: [
          SizedBox(
            width: 200,
            child: Column(
              children: navItems,
            ),
          ),

          Expanded(
            child: Center(
              child: Text(
                'Desktop Layout',
                style: Theme.of(context).textTheme.displayLarge,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
