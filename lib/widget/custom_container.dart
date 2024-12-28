import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key,required this.widgett});
  final Widget? widgett;
  @override
  Widget build(BuildContext context) {
    return             Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: const Color.fromARGB(255, 196, 167, 201)),
                child: widgett);
  }
}