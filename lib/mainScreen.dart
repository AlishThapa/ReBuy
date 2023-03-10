import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_Cubit.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

TextEditingController controller = TextEditingController();

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Counte, int>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            floatingActionButton: Align(
              alignment: const Alignment(1,1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FloatingActionButton(
                    onPressed: () => {context.read<Counte>().incrementer()},
                    child: const Icon(Icons.add),
                  ),


                  FloatingActionButton(
                    onPressed: () => {context.read<Counte>().decrementer()},
                    child: const Icon(Icons.remove),
                  )
                ],
              ),
            ),
            body: Center(
              child: Text(
                state.toString(),
                style: TextStyle(fontSize: 70),
              ),
            ),
          ),
        );
      },
    );
  }
}
