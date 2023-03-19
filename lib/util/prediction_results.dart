// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class PredectionsResults extends StatelessWidget {
  final String predicType;
  final String result;
  final String lableImagePath;
  final int predicValue;

  const PredectionsResults(
      {required this.predicType,
      required this.result,
      required this.lableImagePath,
      required this.predicValue});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    height: 50,
                    padding: EdgeInsets.all(8),
                    child: Image.asset(lableImagePath),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const SizedBox(
                  height: 4,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      predicType,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.grey[600]),
                    ),
                    Text(result),
                  ],
                ),
              ],
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                  padding: EdgeInsets.all(7),
                  color: Colors.redAccent,
                  child: Text(
                    predicValue.toString() + '/h',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
