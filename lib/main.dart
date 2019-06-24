import 'package:flutter/material.dart';
import 'chess_widget.dart';
import 'engine_communication.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Basic chess endgames',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyHomePage();
  }
}

class _MyHomePage extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final screenDim = MediaQuery.of(context).size;
    final minScreenDim = screenDim.width < screenDim.height ? screenDim.width : screenDim.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("Game page"),
      ),
      body: Center(
        child:  Padding(
          padding: EdgeInsets.all(minScreenDim * 0.05),
          child: ChessWidget(dimension: minScreenDim * 0.7),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () => printOsArchitecture(),
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
