import 'package:flutter/material.dart';

class GridViewBuilder extends StatelessWidget {
  const GridViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grid View Builder"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: GridView.builder(
        itemCount: 9,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/Dollify.png'),
              ),
            ),
            child: Center(
              child: Text('${index + 1}'),
            ),
          );
        },
      ),
    );
  }
}
