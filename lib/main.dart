import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'module/homepage/bloc/new_arrival_bloc.dart';
import 'module/homepage/bloc/recently_view_bloc.dart';
import 'module/navigation_bar/bloc_module/bloc_module.dart';
import 'module/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => BottomNavCubit()),
        BlocProvider(create: (context) => RecentlyViewedBloc()),
        BlocProvider(
          create: (context) => NewArrivalBloc(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: const Color(0xffE5E5E5),
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
