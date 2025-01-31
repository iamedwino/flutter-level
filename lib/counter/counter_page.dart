/*

  COUNTER PAGE: responsible for providing CounterCubit to Counter View (UI)
  
  - use BlocProvider
  
 */

  import 'package:flutter/material.dart';
  import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dev_level/counter/counter_cubit.dart';

import 'counter_view.dart';
  
  class CounterPage extends StatelessWidget {
    const CounterPage({super.key});
  
    @override
    Widget build(BuildContext context) {

      // bloc provider
      return BlocProvider(
          create: (context) => CounterCubit(0),
        child: BlocListener<CounterCubit, int>(
            listener: (context, state) {
              // show pop up box when it exceeds 10
              if (state > 10) {
                showDialog(
                    context: context,
                    builder: (context) => const AlertDialog(
                      content: Text(
                        "Can not exceed 10!",
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                    ),
                );
              } else if (state < 0) {
                showDialog(
                    context: context,
                    builder: (context) => const AlertDialog(
                      content: Text(
                          "Can not go below 0!",
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                    )
                );
              }
            },

          // counter view (UI)
          child: const CounterView(),
        ),
      );
    }
  }
  