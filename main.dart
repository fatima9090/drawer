import "package:flutter/material.dart";
import "home_page.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter app',
      debugShowCheckedModeBanner: false,
      home: const MyMainDart(),
    );
  }
}

class MyMainDart extends StatefulWidget {
  const MyMainDart({super.key});

  @override
  State<MyMainDart> createState() => _MyDartState();
}

class _MyDartState extends State<MyMainDart> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const MyHomeClass()),
          );
        },
        tooltip: 'Go to Home Page',
        child: const Icon(Icons.home),
      ),
      appBar: AppBar(

        backgroundColor: const Color.fromARGB(255, 73, 177, 234),
        centerTitle: true,
        title: const Text('Counter App Flutter Project'),
      ),
       body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    textStyle: const TextStyle(color: Colors.white),
                  ),
                  onPressed: _incrementCounter,
                  child: const Text(
                    'Increment',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    textStyle: const TextStyle(color: Colors.white),
                  ),
                  onPressed: _resetCounter,
                  child: const Text(
                    'Reset',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
