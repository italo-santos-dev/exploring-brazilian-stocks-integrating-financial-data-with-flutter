<p align="right">
  <a href="README.md">US</a> - <a href="README.pt.md">BR</a>
</p>

# Stock Listing App

This is an example of a Flutter app that lists stock information obtained from a public API. The app displays the stock symbol, the sector it belongs to, and the latest price.

## How It Works

1. **Package Imports**: The code begins by importing necessary packages for Flutter, including the `http` package for making HTTP requests and the `dart:convert` package for JSON data manipulation.

2. **Main Class (`MyApp`)**: The `MyApp` class is the entry point of the app. It returns an instance of `MaterialApp`, which is the root of the Flutter UI.

3. **Stock Listing Page (`StockListPage`)**: This is the main page of the app, which extends `StatefulWidget` to allow dynamic state updates. It contains a list of stocks.

4. **Page State for Stock Listing (`_StockListPageState`)**: This class manages the state of the stock listing page. It initializes an empty list of stocks and makes an HTTP request to a public API in the `initState()` method.

5. **Stock Fetching Method (`fetchStock`)**: This method uses the `http` package to make a GET request to the stocks API URL. If the response is successful (status code 200), the JSON data is decoded, and the list of stocks is updated in the state. Otherwise, an exception is thrown.

6. **UI Construction (`build`)**: The `build` method constructs the UI of the stock listing page. It displays an `AppBar` with the title "Stocks" and a `ListView.builder` that displays each stock as a `ListTile`.

7. **Stock Listing (`ListView.builder`)**: This is a scrollable list of stocks, where each stock is displayed as a `ListTile` containing the stock symbol, sector, and latest price.

## How to Use

1. Clone or download this repository.
2. Ensure you have Flutter installed and set up in your development environment.
3. Run the app on a device or emulator.

## Requirements

- Flutter SDK
- Internet connection to fetch stock data

## Note

This app uses a public API to fetch stock data. Make sure to adhere to the API's terms of use and consider potential usage limitations.
