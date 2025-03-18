import 'package:flutter/material.dart';

import '../api/stock_data_api.dart';
import '../models/stock.dart';

class StockListTile extends StatefulWidget {
  final Stock stock;
  final StockDataApi api;
  final int index;

  const StockListTile({super.key, required this.stock, required this.api, required this.index});

  @override
  StockListTileState createState() => StockListTileState();
}

class StockListTileState extends State<StockListTile> {

  @override
  void initState() {
    super.initState();

    // if(mounted) {
    //   widget.api.stockPriceStream.listen((stockMessage) {
    //     // print('Broadcast Received - ${stockMessage.symbol} | ${stockMessage.price}');

    //     if(stockMessage.symbol == widget.stock.symbol) {
    //       setState(() {
    //         currentPrice = stockMessage.price;
    //       });
    //     }
    //   });
    // }
  }

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = widget.index % 2 == 0
        ? const Color.fromARGB(255, 247, 247, 247)  
        : const Color.fromARGB(255, 236, 236, 236);  

    return ListTile(
      tileColor: backgroundColor,
      title: Text(widget.stock.name),
      trailing: Text(
        widget.stock.price.toStringAsFixed(2),
        style: const TextStyle( // Add const here to avoid the warning
          fontSize: 20, // Increase the font size here
        ),
      ),
      subtitle: Text(widget.stock.description),
    );
  }
}
