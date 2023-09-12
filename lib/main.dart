import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      Color color = Theme.of(context).primaryColor;

      Widget buttonSection = Row(
        mainAxisAligment: MainAxisAligment.spaceEvenly,
        children: [
          _builButtonColumn(color, Icons.call, 'CALL'),
          _builButtonColumn(color, Icons.near_me, 'ROUTE'),
          _builButtonColumn(color, Icons.share, 'SHARE'),
        ],
      );
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [Expanded(
                    /*1*/
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /*2*/
            Container(padding: const EdgeInsets.only(bottom: 8),
            child: const Text('Oeschinen Lake Campground', 
            style: TextStyle(fontWeight: FontWeight.bold,
            ),
            ),
            ),
            Text('Kanderteg, Switzerland',
            style: TextStyle(color: Colors.grey[500],
            ),
            ),
            ],
            ),
            ),
             /*3*/
            Icon(Icons.star, color: Colors.red[500],
            ),
            const Text('41'),
            ],
            ),
    );
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }

  //* metodo auxiliar que toma un color, un Icony Texty
  //* devuelve una columna con sus widgets pintados en el color dado.
  Column _buildButtonColumn(Color color, IconData icon, String label){
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label, 
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        )
      ],
    );
  }
}