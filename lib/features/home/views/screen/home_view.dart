import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
        ),
        leading: Icon(Icons.menu, color: Colors.black, size: 28),
        title: Text(
          'Allrecipes',
          style: TextStyle(
            color: Colors.orange[800],
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Row(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.orange[800],
                    child: Icon(Icons.person, color: Colors.white, size: 28),
                  ),
                ],
              ),
              SizedBox(width: 16),
              Icon(Icons.favorite, color: Colors.pink, size: 28),
              SizedBox(width: 16),
            ],
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Center(child: Text('Welcome to Allrecipes!')),
          ),
        ],
      ),
    );
  }
}
