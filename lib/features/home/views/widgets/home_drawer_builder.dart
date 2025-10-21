import 'package:flutter/material.dart';

class HomeDrawerBuilder extends StatelessWidget {
  const HomeDrawerBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

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
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back, color: Colors.black, size: 28),
        ),
        title: Text(
          'Allrecipes',
          style: TextStyle(
            color: Colors.orange[800],
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 8.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Search",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: height / 65),
                customTextFromFieldSearch(width, height, context),
                SizedBox(height: height * 0.01),
                MenuItemBuilder(text: "DINNERS", height: height, onTap: () {}),
                MenuItemBuilder(text: "MEALS", height: height, onTap: () {}),
                MenuItemBuilder(
                  text: "OCCASIONS",
                  height: height,
                  onTap: () {},
                ),
                MenuItemBuilder(
                  text: "OCCASIONS",
                  height: height,
                  onTap: () {},
                ),
                MenuItemBuilder(text: "CUISINES", height: height, onTap: () {}),
                MenuItemBuilder(
                  text: "KITCHEN TIPS",
                  height: height,
                  onTap: () {},
                ),
                MenuItemBuilder(text: "NEWS", height: height, onTap: () {}),
                MenuItemBuilder(text: "DESSERTS", height: height, onTap: () {}),
                MenuItemBuilder(text: "ABOUT US", height: height, onTap: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget customTextFromFieldSearch(
    double width,
    double height,
    BuildContext context,
  ) {
    return Row(
      children: [
        SizedBox(
          width: width / 1.25,
          height: height * 0.05,
          child: TextFormField(
            decoration: InputDecoration(
              hintText: 'What are you looking for?',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(0)),
                borderSide: BorderSide(color: Colors.black, width: 2),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(0)),
                borderSide: BorderSide(color: Colors.black, width: 2),
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            ),
            onTapOutside: (event) => FocusScope.of(context).unfocus(),
          ),
        ),
        Container(
          height: height * 0.05,
          width: 40,
          decoration: BoxDecoration(color: Colors.orange[800]),
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: Colors.white),
          ),
        ),
      ],
    );
  }
}

class MenuItemBuilder extends StatelessWidget {
  const MenuItemBuilder({
    super.key,
    required this.text,
    required this.onTap,
    required this.height,
  });

  final String text;
  final VoidCallback onTap;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: height * 0.005),
        ListTile(
          trailing: Icon(Icons.arrow_forward_ios, color: Colors.black),
          title: Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          onTap: onTap,
        ),
        Divider(color: Colors.grey),
      ],
    );
  }
}
