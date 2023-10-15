// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoapp/app_cubit.dart';
import 'package:todoapp/app_states.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => NoteCubit(),
      child: BlocConsumer<NoteCubit, NoteStates>(
        listener: (context, State) {},
        builder: (context, State) {
          return Scaffold(
            appBar: AppBar(),
            // ignore: prefer_const_constructors
            body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text('hello')]),
            ),
          );
        },
      ),
    );
  }
}
