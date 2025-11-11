import 'dart:developer';

import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search City'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: Center(
          child: TextField(
            onSubmitted: (value) {
              log(value);
            },
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 32,
              ),
              labelText: 'Search',
              suffixIcon: Icon(Icons.search),
              hintText: 'Enter City Name',
              border: OutlineInputBorder(
                // borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(color: Colors.purple),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
