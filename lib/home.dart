import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 19, 183, 201),
          title: const Text('Calculator')),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Enter first number'),
            ),
            const SizedBox(
              height: 20,
            ),
            const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter second number'),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Add'),
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Subtract'),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Multiply'),
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Divide'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
