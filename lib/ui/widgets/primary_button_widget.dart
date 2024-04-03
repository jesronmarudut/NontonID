import 'package:flutter/material.dart';
import 'package:nontonid/values/tema.dart';

class PrimaryButtonWidget extends StatelessWidget {
  const PrimaryButtonWidget({
    super.key,
    required this.onTap,
    required this.text,
  });

  final void Function() onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(10),
        child: Ink(
          padding: const EdgeInsets.symmetric(vertical: 14),
          width: double.infinity,
          decoration: BoxDecoration(
              color: lightPurple,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    offset: const Offset(0, 0),
                    blurRadius: 15,
                    spreadRadius: 0,
                    color: lightPurple.withOpacity(0.15)),
              ],
              gradient: LinearGradient(colors: [
                lightPurple,
                lightPurple2,
              ])),
          child: Text(
            text,
            style: whiteTextStyle.copyWith(fontSize: 20, fontWeight: black),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
