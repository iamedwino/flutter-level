/*

  COUNTER VIEW: responsible for UI

  - use BlocBuilder

 */

  import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dev_level/counter/counter_cubit.dart';

  class CounterView extends StatelessWidget {
    const CounterView({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: const Text(
            "Flutter Dev Level",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.grey[800],
        ),
        body: Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // image of the user
              const Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('lib/images/naruto.jpg'),
                  radius: 50.0,
                )
              ),

              Divider(
                height: 90.0,
                color: Colors.grey[800],
              ),

              // Name
              const Text(
                'NAME',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 5),
              // Name
              const Text(
                'EDWINO',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.yellow,
                ),
              ),

              const SizedBox(height: 25),

              // Name
              const Text(
                'CURRENT FLUTTER LEVEL',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 0),
              // Name
              BlocBuilder<CounterCubit, int>(
                  builder: (context, state) {
                    return Text(
                      state.toString(),
                      style: const TextStyle(
                        fontSize: 50,
                        color: Colors.yellow,
                      ),
                    );
                  },
              ),

              const SizedBox(height: 20),

              const Row(
                children: [
                  Icon(
                      Icons.email,
                    size: 30,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 3),
                  Text(
                      'edwinodesign@gmail.com',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 17,
                            letterSpacing: 1,
                          )
                  ),
                ],
              ),
            ],
          ),

        ),

        // BUTTONS
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // increment button
            FloatingActionButton(
              onPressed: () => context.read<CounterCubit>().increment(),
              child: const Icon(Icons.add),
            ),

            const SizedBox(height: 10),
            
            // decrement button
            FloatingActionButton(
              onPressed: () => context.read<CounterCubit>().decrement(),
              child: const Icon(Icons.remove),
            ),
          ],
        ),
      );
    }
  }
