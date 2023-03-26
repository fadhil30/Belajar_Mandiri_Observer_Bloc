import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latihan_bloc/bloc/counter.dart';
import 'package:latihan_bloc/bloc/counter_event.dart';

class HomePage extends StatelessWidget {
  // final CounterBloc counterB = CounterBloc();
  final CounterCubit counterB = CounterCubit();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('COUNTER APPS'),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            BlocBuilder<CounterCubit, int>(
              bloc: counterB,
              builder: (context, state) {
                return Text(
                  '$state',
                  style: TextStyle(fontSize: 50),
                );
              },
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () {
                      // counterB.add(CounterEvent.decrement);
                      counterB.decrement();
                    },
                    icon: Icon(Icons.remove)),
                IconButton(
                    onPressed: () {
                      // counterB.add(CounterEvent.increment);
                      counterB.increment();
                    },
                    icon: Icon(Icons.add))
              ],
            )
          ],
        ),
      ),
    );
  }
}
