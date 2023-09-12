import 'package:flutter/material.dart';

class AppScreen extends StatefulWidget {
  const AppScreen({super.key});

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  int _counter=0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('App Screen'),

      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(_counter.toString(),
          textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: TextButton.icon(
                  onPressed: () {
                  setState(() {
                    ++_counter;
                  });
                },
                    icon: Icon(Icons.add),
                    label: Text('Increment'),
                ),
              ),
              Expanded(
                child: TextButton.icon(
                  onPressed: _counter >0
                     ? () {
                    if (_counter > 0){
                      setState(() {
                        --_counter;
                      });
                    }
                  }
                  : null,
                  icon: Icon(Icons.remove),
                  label: Text('Decrement'),
                ),
              ),
            ],
          ),
          Visibility(
            visible: _counter > 0,
            maintainState: true,
            maintainSize: true,
            maintainAnimation: true,
            child: const Center(
              child: Text('visible'),
            ),
          )
        ],
      ),
      
    );
  }
}
