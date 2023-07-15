import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double contador = 10;

  final estilo = const TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.w800,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Operaciones'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('El resultado es:', style: estilo),
            const SizedBox(height: 25),
            Text('$contador', style: estilo),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(width: 30),
          FloatingActionButton(
            backgroundColor: Colors.blueAccent,
            onPressed: suma,
            child: const Icon(Icons.add),
          ),
          const SizedBox(width: 20),
          FloatingActionButton(
            backgroundColor: Colors.blueAccent,
            onPressed: resta,
            child: const Icon(Icons.remove),
          ),
          const SizedBox(width: 20),
          FloatingActionButton(
            backgroundColor: Colors.blueAccent,
            onPressed: multiplicacion,
            child: const Icon(Icons.clear),
          ),
          const SizedBox(width: 20),
          FloatingActionButton(
            backgroundColor: Colors.blueAccent,
            onPressed: division,
            child: const Icon(CupertinoIcons.divide),
          ),
          const SizedBox(width: 20),
          FloatingActionButton(
            backgroundColor: Colors.blueAccent,
            onPressed: restart,
            child: const Icon(Icons.restart_alt),
          ),
        ],
      ),
    );
  }

  void suma() {
    setState(() {});
    contador += 2;
  }

  void resta() {
    contador -= 2;
    setState(() {});
  }

  void multiplicacion() {
    contador *= 2;
    setState(() {});
  }

  void division() {
    contador /= 2;
    setState(() {});
  }

  void restart() {
    contador = 10;
    setState(() {});
  }
}
