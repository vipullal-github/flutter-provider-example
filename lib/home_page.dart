import 'package:flutter/material.dart';
import 'package:flutter_provider_example/counter_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("HomePage"),
        ),
        body: Consumer<CounterProvider>(
          builder: (context, CounterProvider p, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "You pressed the counter ${p.counter} times",
                  style: const TextStyle(color: Colors.blue, fontSize: 20),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        p.incrementCounter();
                      },
                      child: const Text("Increment"),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          p.decrementCount();
                        },
                        child: const Text("Decrement"))
                  ],
                )
              ],
            );
          },
        ));
  }
}
