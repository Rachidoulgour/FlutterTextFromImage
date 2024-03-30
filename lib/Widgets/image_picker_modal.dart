import 'package:flutter/material.dart';

void imagePickerModal(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return Container(
        padding: const EdgeInsets.all(20),
        height: 220,
        child: Column(
          children: [
            Card(
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(15),
                child: const Text(
                  "Camera",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Card(
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(15),
                child: const Text(
                  "Gallery",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            )
          ],
        ),
      );
    },
  );
}
