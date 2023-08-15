import 'package:flutter/material.dart';
import 'package:kpop_database/services/load_data.dart';

class ItemListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Map<String, dynamic>>>(
      future: JsonService.fetchItems(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else {
          final items = snapshot.data!;
          return ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              final itemName = items[index]['artist_name'] as String? ??
                  'Nama Tidak Tersedia';
              final itemlink = items[index]['profile_link'] as String? ??
                  'Nama Tidak Tersedia';
              return ListTile(title: Text(itemName), subtitle: Text(itemlink));
            },
          );
        }
      },
    );
  }
}
