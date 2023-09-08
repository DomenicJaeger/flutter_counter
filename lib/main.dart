import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _counter2 = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _incrementCounterByTwo() {
    setState(() {
      _counter += 2;
    });
  }

  void _incrementCounterByThree() {
    setState(() {
      _counter += 3;
    });
  }

  void _incrementCounter2() {
    setState(() {
      _counter2++;
    });
  }

  void _incrementCounter2ByTwo() {
    setState(() {
      _counter2 += 2;
    });
  }

  void _incrementCounter2ByThree() {
    setState(() {
      _counter2 += 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: _incrementCounter,
                          child: const Text(" +1 ",
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.red,
                              )),
                        ),
                        InkWell(
                          onTap: _incrementCounterByTwo,
                          child: const Text(" +2 ",
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.red,
                              )),
                        ),
                        InkWell(
                          onTap: _incrementCounterByThree,
                          child: const Text(" +3 ",
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.red,
                              )),
                        ),
                      ],
                    ),
                    const Text(
                      'Team Green',
                      style: TextStyle(
                        backgroundColor: Colors.lightGreen,
                        fontSize: 24,
                        color: Color.fromARGB(255, 56, 94, 14),
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Text(
                      '$_counter',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: _incrementCounter2,
                          child: const Text(" +1 ",
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.red,
                              )),
                        ),
                        InkWell(
                          onTap: _incrementCounter2ByTwo,
                          child: const Text(" +2 ",
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.red,
                              )),
                        ),
                        InkWell(
                          onTap: _incrementCounter2ByThree,
                          child: const Text(" +3 ",
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.red,
                              )),
                        ),
                      ],
                    ),
                    const Text(
                      'Team Blue',
                      style: TextStyle(
                        backgroundColor: Colors.lightBlue,
                        fontSize: 24,
                        color: Color.fromARGB(255, 8, 51, 87),
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Text(
                      '$_counter2',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ],
                ),
              ],
            ),
            Text(
                '${_counter > _counter2 ? "team Green has won the game" : (_counter < _counter2 ? "team Blue has won the game" : "the result is a draw")}'),
            Text(
                'they won by a margin of ${_counter > _counter2 ? _counter - _counter2 : (_counter < _counter2 ? _counter2 - _counter : 0)} points'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _counter = 0;
            _counter2 = 0;
          });
          print(_counter);
        },
        tooltip: 'Reset to 0',
        child: const Icon(Icons.delete),
      ),
    );
  }
}
/*
InkWell(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: IconButton(
                              onPressed: _incrementCounter,
                              tooltip: 'free throw',
                              icon: const Icon(Icons.exposure_minus_1),
                              color: Colors.pink,
                            ),
                          ),
                        ),
                        InkWell(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: IconButton(
                              onPressed: _incrementCounterByTwo,
                              tooltip: 'two pointer',
                              icon: const Icon(Icons.exposure_plus_1),
                              color: Colors.pink,
                            ),
                          ),
                        ),
                        InkWell(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: IconButton(
                              onPressed: _incrementCounterByThree,
                              tooltip: 'three pointer',
                              icon: const Icon(Icons.exposure_plus_2),
                              color: Colors.pink,
                            ),
                          ),
                        ),
*/