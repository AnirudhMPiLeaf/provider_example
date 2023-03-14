import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/provider/counter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int result = Provider.of<CounterProvider>(context).counterValue;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider'),
      ),
      body: Center(child: Text(result.toString())),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              onPressed: () =>
                  Provider.of<CounterProvider>(context, listen: false)
                      .incrementCounter(),
              child: const Icon(Icons.plus_one)),
          const SizedBox(height: 10),
          FloatingActionButton(
              onPressed: () =>
                  Provider.of<CounterProvider>(context, listen: false)
                      .decrementCounter(),
              child: const Icon(Icons.exposure_minus_1)),
          const SizedBox(height: 10),
          FloatingActionButton(
              onPressed: () =>
                  Provider.of<CounterProvider>(context, listen: false)
                      .resetCounter(),
              child: const Icon(Icons.restore)),
        ],
      ),
    );
  }
}
