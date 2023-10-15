// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'app_cubit.dart';
import 'app_states.dart';

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
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = NoteCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              title: Text(cubit.titles[cubit.currentIndex]),
              centerTitle: true,
            ),
            body: cubit.screens[cubit.currentIndex],
            // body: Center(
            //   child: Column(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         Text(cubit.name),
            //         Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceAround,
            //           children: [
            //             MaterialButton(
            //               color: Colors.blue,
            //               shape: RoundedRectangleBorder(
            //                   borderRadius: BorderRadius.circular(25.0)),
            //               onPressed: () {
            //                 cubit.increaseNumber();
            //               },
            //               child: Icon(Icons.add),
            //             ),
            //             Text(cubit.number.toString()),
            //             MaterialButton(
            //               color: Colors.blue,
            //               shape: RoundedRectangleBorder(
            //                   borderRadius: BorderRadius.circular(10.0)),
            //               onPressed: () {
            //                 cubit.decreaseNumber();
            //               },
            //               child: Icon(Icons.minimize),
            //             )
            //           ],
            //         )
            //       ]),
            // ),
            bottomNavigationBar: BottomNavigationBar(
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.location_city), label: 'City'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings), label: 'Settings'),
              ],
              onTap: (index) {
                cubit.changeBottomNavItems(index);
              },
              currentIndex: cubit.currentIndex,
              type: BottomNavigationBarType.fixed,
            ),
          );
        },
      ),
    );
  }
}
