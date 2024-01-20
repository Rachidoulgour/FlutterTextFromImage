
import 'package:flutter/material.dart';

void imagePickerModal(BuildContext context) {
  showModalBottomSheet(context: context, builder: (context) {
    return Container(
      padding: const EdgeInsets.all(5.0),
      height: 220,
      child: Column(
        children: [
          Card(
            child: Container(
              child: const Text("Camera", style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20
              )),)
          )
        ]
      )
    );
  });
}