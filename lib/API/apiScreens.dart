import 'package:after_exam/API/apiEvents.dart';
import 'package:after_exam/API/apiState.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'api_bloc.dart';

class APIScreen extends StatefulWidget {
  const APIScreen({Key? key}) : super(key: key);

  @override
  State<APIScreen> createState() => _APIScreenState();
}

class _APIScreenState extends State<APIScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => APIBloc(),
      child: BlocBuilder<APIBloc, ApiState>(
        builder: (context, state) {
          switch (state.status) {
            case ApiStatus.initial:
              return SafeArea(
                child: Scaffold(
                  body: Center(
                    child: GestureDetector(
                      onTap: () => context.read<APIBloc>().add(ApiCallEvents()),
                      child: Container(
                        height: 50,
                        width: 300,
                        alignment: Alignment.center,
                        color: Colors.lightGreenAccent,
                        child: const Text('press'),
                      ),
                    ),
                  ),
                ),
              );
            case ApiStatus.loading:
              return const Scaffold(
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            case ApiStatus.loaded:
              return SafeArea(
                child: Scaffold(
                  body: ListView.separated(
                    shrinkWrap: true,
                    separatorBuilder: (context, index) => const SizedBox(height: 10),
                    itemCount: state.data.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              state.data[index].userId.toString(),
                              style: const TextStyle(color: Colors.black, fontSize: 15),
                            ),
                            Text(
                              state.data[index].id.toString(),
                              style: const TextStyle(color: Colors.black, fontSize: 10),
                            ),
                            Text(
                              state.data[index].title,
                              style: const TextStyle(color: Colors.black, fontSize: 10),
                            ),
                            Text(
                              state.data[index].completed.toString(),
                              style: const TextStyle(color: Colors.black, fontSize: 10),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              );
            default:
              return const SizedBox();
          }
        },
      ),
    );
  }
}
