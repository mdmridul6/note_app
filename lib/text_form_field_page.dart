import 'package:flutter/material.dart';

class TextFormFieldPage extends StatelessWidget {
  const TextFormFieldPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form input field'),
        backgroundColor: Colors.indigo.shade200,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: TextField(
            // controller: TextEditingController(),
            // enabled: false,
            onChanged: (value) {},
            style: const TextStyle(fontSize: 16, color: Colors.orange),
            maxLength: 10,
            decoration: InputDecoration(
                hintText: 'Enter your email',
                hintStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
                // label: const Text('Email'),
                labelText: 'Email',
                // labelStyle: const TextStyle(),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide:
                        const BorderSide(width: 4, color: Colors.orange)),
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(width: 4, color: Colors.deepOrange),
                    borderRadius: BorderRadius.circular(8)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide:
                        const BorderSide(width: 4, color: Colors.orangeAccent)),
                disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide:
                        const BorderSide(width: 4, color: Colors.grey)),
                fillColor: Colors.white,
                filled: true,
                prefixIcon: const Icon(Icons.add),
                prefixIconColor: Colors.grey,
        // prefix: Column(
        //   children: [
        //     Icon(Icons.add),
        //   ],
        // ),
                suffixIcon: const Icon(Icons.remove_red_eye),
                suffixIconColor: Colors.red
        // suffix: Column(
        //   children: [],
        // )
                ),
          ),
        ),
      ),
    );
  }
}
