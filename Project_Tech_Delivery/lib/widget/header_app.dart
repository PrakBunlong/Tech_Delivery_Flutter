import 'dart:html';

import 'package:flutter/material.dart';

class HeaderApp extends StatelessWidget {
  const HeaderApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0, right: 8, top: 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(Icons.percent),
            color: const Color.fromARGB(255, 129, 210, 132),
          ),
          const Text(
            '92 high street London',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          IconButton(
            onPressed: () {
              // Add your notification icon onPressed logic here
            },
            icon:
                const Icon(Icons.notifications), // Use Icons.notifications here
          ),
        ],
      ),
    );
  }
}
