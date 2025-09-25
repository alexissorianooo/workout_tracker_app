import 'package:flutter/material.dart';

class WorkoutCardDetailsWidget extends StatelessWidget {
  final String? label;
  final String? value;
  const WorkoutCardDetailsWidget({super.key, this.label, this.value});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(label ?? ''),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(4.0),
            ),
            child: TextField(
              controller: TextEditingController(text: value ?? ''),
              maxLines: 1,
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                border: InputBorder.none,
                isDense: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
