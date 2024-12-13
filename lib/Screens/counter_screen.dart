import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'Counter App',
          style: TextStyle(color: Colors.white, fontSize: 22),
        )),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$number',
              style: const TextStyle(fontSize: 16),
            ),
            Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: const Color.fromARGB(255, 196, 167, 201)),
                child: buildwidget(
                    onpressed: () {
                      setState(() {
                        number += 10;
                      });
                    },
                    icon: const Icon(Icons.text_increase))),
            SizedBox(
              height: 20,
            ),
            Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: const Color.fromARGB(255, 196, 167, 201)),
                child: buildwidget(
                    onpressed: () {
                      setState(() {
                        if(number>0)
                        number -= 10;
                      });
                    },
                    icon: const Icon(Icons.text_decrease))),
            SizedBox(
              height: 20,
            ),
            Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: const Color.fromARGB(255, 196, 167, 201)),
                child: buildwidget(
                    onpressed: () {
                      setState(() {
                        number = 0;
                      });
                    },
                    icon: const Icon(Icons.reset_tv)))
          ],
        ),
      ),
    );
  }
}

Widget buildwidget(
    {required void Function()? onpressed, required Widget icon}) {
  return IconButton(onPressed: onpressed, icon: icon);
}
