import 'package:flutter/material.dart';

class Item {
  final String date;
  final String content;

  Item({required this.date, required this.content});
}

class NotifikasiPage extends StatelessWidget {
  final List<Item> items = [
    Item(date: '12 Feb 2023', content: 'Lorem ipsum dolor sit amet'),
    Item(date: '15 Feb 2023', content: 'consectetur adipiscing elit'),
    Item(
        date: '18 Feb 2023',
        content:
            'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua'),
    Item(date: '22 Feb 2023', content: 'Ut enim ad minim veniam'),
    Item(
        date: '25 Feb 2023',
        content:
            'quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat'),
    Item(
        date: '28 Feb 2023',
        content:
            'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Page'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return ListTile(
            leading: Text(item.date),
            title: Text(item.content),
            onTap: () {
              // TODO: Implement item selection logic
              print('Selected item: ${item.content}');
            },
          );
        },
      ),
    );
  }
}
