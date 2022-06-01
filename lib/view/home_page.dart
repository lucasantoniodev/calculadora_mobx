import 'package:calculator_basic/global.dart';
import 'package:calculator_basic/view/grid_generator.dart';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 28, 0, 59),
        title: const Center(child: Text("Calculadora", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
      ),
      backgroundColor: const Color.fromARGB(255, 20, 2, 53),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
              child: Observer(
            builder: (context) => Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      calculator.userInput,
                      style: const TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      calculator.answer,
                      style: const TextStyle(fontSize: 40, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          )),
          Expanded(
            flex: 2,
            child: GridView.builder(
              itemCount: calcGrid.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
              ),
              itemBuilder: (BuildContext context, index) => calcGrid[index],
            ),
          ),
        ],
      ),
    );
  }
}
