import 'package:flutter/material.dart';

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Text('List View Separator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(4),
        child: ListView.separated(
          itemBuilder: (context, index) => ListTile(
              leading: CircleAvatar(child: Text('${index + 1}')),
              title: Text('Title ${index + 1}'),
              subtitle: Text('Subtitle ${index + 1}'),
              trailing: const Icon(Icons.more_vert)),
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
          itemCount: 10,
        ),
      ),
    );
  }
}
