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
          mainAxisAlignment: MainAxisAlignment.center,
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
                      'Team Red',
                      style: TextStyle(
                        backgroundColor: Color.fromARGB(255, 235, 129, 122),
                        fontSize: 24,
                        color: Color.fromARGB(255, 189, 31, 20),
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
                '${_counter > _counter2 ? "team Green has won the game" : (_counter < _counter2 ? "team Red has won the game" : "the result is a draw")}'),
            Text(
                'they won by a margin of ${_counter > _counter2 ? _counter - _counter2 : (_counter < _counter2 ? _counter2 - _counter : 0)} points'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    margin: const EdgeInsets.only(top: 20.0),
                    child: Image.asset('assets/images/happyPear.png',
                        width: 200, height: 200, fit: BoxFit.cover)),
                Container(
                    margin: const EdgeInsets.only(top: 20.0),
                    child: Image.asset('assets/images/happyStrawberry.png',
                        width: 200, height: 200, fit: BoxFit.cover)),
              ],
            ),
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
