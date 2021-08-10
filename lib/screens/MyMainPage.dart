import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorial/providers/counter_provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Your counter value is: ${context.watch<Counter>().count}"),
            ElevatedButton(
              onPressed: () => {Navigator.pushNamed(context, '/second')},
              child: Text("Launch Screen"),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            key: Key('increment_btn'),
            child: Icon(Icons.add),
            onPressed: () => context.read<Counter>().increment(),
            tooltip: 'Increment',
          ),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            key: Key('reset_btn'),
            child: Icon(Icons.exposure_zero),
            onPressed: () => context.read<Counter>().reset(),
            tooltip: 'Reset',
          ),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            key: Key('decrement_btn'),
            child: Icon(Icons.remove),
            onPressed: () => context.read<Counter>().decrement(),
            tooltip: 'Decrement',
          ),
        ],
      ),
    );
  }
}
