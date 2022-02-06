import 'package:flutter/material.dart';

class ScrollTestWidget extends StatelessWidget {
  final List<String>? bookTitles;

  const ScrollTestWidget({Key? key, this.bookTitles})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    assert(bookTitles!.isNotEmpty);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book Shelf'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => ListTile(
          title: Text(bookTitles![index]),
        ),
        itemCount: bookTitles!.length,
      ),
    );
  }
}
