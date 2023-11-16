import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy_mansour/modules/counter/bloc_counter/cubit.dart';
import 'package:udemy_mansour/modules/counter/bloc_counter/states.dart';

class MyCounter extends StatelessWidget {
  const MyCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(InitCounterState()),
      child: BlocConsumer<CounterCubit, CounterStates>(
        listener: (BuildContext context, CounterStates state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Counter'),
            ),
            body: Center(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    CounterCubit.get(context).plus_counter();
                  },
                  icon: Icon(
                    Icons.add,
                    color: Colors.grey,
                  ),
                  iconSize: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    '${CounterCubit.get(context).counter}',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    CounterCubit.get(context).minuscounter();
                  },
                  icon: Icon(
                    Icons.minimize,
                  ),
                  iconSize: 30,
                )
              ],
            )),
          );
        },
      ),
    );
  }
}
