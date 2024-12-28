import 'package:counter_app/feature/home/cubit/Counter_cubit.dart';
import 'package:counter_app/widget/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, double>(
      builder: (context, state) {
        CounterCubit cubit = BlocProvider.of(context);
        return Scaffold(
          appBar: AppBar(
            title: const Center(
              child: Text(
                'Counter App',
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  state.toString(),
                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                CustomContainer(
                  widgett: buildWidget(
                    onPressed: () {
                      cubit.increment();
                    },
                    icon: const Icon(Icons.plus_one),
                  ),
                ),
                const SizedBox(height: 20),
                CustomContainer(
                  widgett: buildWidget(
                    onPressed: () {
                      cubit.decrement();
                    },
                    icon: const Icon(Icons.exposure_minus_1_outlined),
                  ),
                ),
                const SizedBox(height: 20),
                CustomContainer(
                  widgett: buildWidget(
                    onPressed: cubit.reset,
                    icon: const Icon(Icons.restart_alt),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget buildWidget({
    required void Function()? onPressed,
    required Widget icon,
  }) {
    return IconButton(onPressed: onPressed, icon: icon);
  }
}
