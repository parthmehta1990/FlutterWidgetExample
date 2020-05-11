import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
// Ref: https://inducesmile.com/google-flutter/how-to-display-array-of-string-from-json-using-futurebuilder-in-flutter/
class FutureBuilderJson extends StatelessWidget {
  final String uri = 'https://jsonplaceholder.typicode.com/users';

  Future<List<dynamic>> _fetchStrings() async {
    var response = await http.get(uri);

    if (response.statusCode == 200) {
      final items = json.decode(response.body).cast<Map<String, dynamic>>();
      List<dynamic> listOfString = items.map((json) {
        return json['name'];
      }).toList();

      return listOfString;
    } else {
      throw Exception('Failed to load internet');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FutureBuilder & JSON")),
      body: FutureBuilder<List<dynamic>>(
        future: _fetchStrings(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          }
          return ListView(
            children: snapshot.data.map((data) {
              return ListTile(
                title: Text(data.toString()),
              );
            }).toList(),
          );
        },
      ),
    );
  }
}