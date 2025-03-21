import 'package:flutter/material.dart';

import '../widgets/stock_list.dart';


class MainPage extends StatelessWidget {
  const MainPage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
             /* padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              width: double.infinity,
              color: const Color.fromARGB(255, 84, 207, 139),
              child: const Text(
                "",
              ),*/
            ),
            const StockList(),
          ],
        ),
      ),
    );
  }
}