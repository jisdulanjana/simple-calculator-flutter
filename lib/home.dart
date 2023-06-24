import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController firstContoller = TextEditingController();
  final TextEditingController secondContoller = TextEditingController();
  double result = 0;

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
            TextField(
              controller: firstContoller,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Enter first number'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: secondContoller,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter second number'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    double firstNumber = double.parse(firstContoller.text);
                    double secondNumber = double.parse(secondContoller.text);
                    setState(() {
                      result = firstNumber + secondNumber;
                    });
                  },
                  child: const Text('Add'),
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {
                    double firstNumber = double.parse(firstContoller.text);
                    double secondNumber = double.parse(secondContoller.text);
                    setState(() {
                      result = firstNumber - secondNumber;
                    });
                  },
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
                  onPressed: () {
                    double firstNumber = double.parse(firstContoller.text);
                    double secondNumber = double.parse(secondContoller.text);
                    setState(() {
                      result = firstNumber * secondNumber;
                    });
                  },
                  child: const Text('Multiply'),
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {
                    double firstNumber = double.parse(firstContoller.text);
                    double secondNumber = double.parse(secondContoller.text);
                    setState(() {
                      result = firstNumber / secondNumber;
                    });
                  },
                  child: const Text('Divide'),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Result: $result',
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
