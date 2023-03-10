import 'package:after_exam/Counter/counterEvent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counterBloc.dart';
import 'nextPage.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: BlocBuilder<CounterBloc, int>(
        builder: (context, state) => Scaffold(
          floatingActionButton: Align(
            alignment: Alignment(1, 1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  heroTag: 'l',
                  onPressed: () => {context.read<CounterBloc>().add(IncrementEvent())},
                  child: const Icon(Icons.add),
                ),
                FloatingActionButton(
                  heroTag: 'lhhh',
                  onPressed: () => {context.read<CounterBloc>().add(DecrementEvent())},
                  child: const Icon(Icons.remove),
                )
              ],
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: Text(state.toString()),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (ctx) => BlocProvider.value(
                        value: context.read<CounterBloc>(),
                          child: NextPage()),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 30,
                  width: 150,
                  decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(15)),
                  child: const Text('press to next page'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
