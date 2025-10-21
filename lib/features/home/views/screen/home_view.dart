import 'package:allrecipes/features/home/views/widgets/home_body_builder.dart';
import 'package:allrecipes/features/home/views/widgets/home_drawer_builder.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => HomeDrawerBuilder()),
            );
          },
          icon: Icon(Icons.menu, color: Colors.black, size: 28),
        ),
        title: Text(
          'allrecipes',
          style: TextStyle(
            color: Colors.orange[900],
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        actions: [
          Row(
            children: [
              CircleAvatar(
                radius: 16,
                backgroundColor: Colors.orange[800],
                child: Icon(Icons.person, color: Colors.white, size: 28),
              ),
              SizedBox(width: 16),
              Text(
                'Log In',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
              // SizedBox(width: 16),
              VerticalDivider(
                color: Colors.grey[400],
                thickness: 1,
                indent: 15,
                endIndent: 15,
              ),
              Icon(Icons.favorite, color: Colors.pink, size: 28),
              SizedBox(width: 16),
            ],
          ),
        ],
      ),
      body: HomeBodyBuilder(),
    );
  }
}
