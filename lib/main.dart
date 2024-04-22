import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StockListPage(),
    );
  }
}

class StockListPage extends StatefulWidget {
  @override
  _StockListPageState createState() => _StockListPageState();
}

class _StockListPageState extends State<StockListPage> {
  List<dynamic> stocks = [];

  @override
  void initState() {
    super.initState();
    fetchStock();
  }

  Future<void> fetchStock() async {
    final String apiUrl = "http://mfinance.com.br/api/v1/stocks";

    var response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      var jsonData = json.decode(response.body);
      setState(() {
        stocks = jsonData['stocks'];
      });
    } else {
      throw Exception('falid to load stocks');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stocks'),
      ),
      body: ListView.builder(
          itemCount: stocks.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(stocks[index]['symbol']),
              subtitle: Text(stocks[index]['sector']),
              trailing: Text('R\$ ${stocks[index]['lastPrice']}'),
            );
          }),
    );
  }
}
